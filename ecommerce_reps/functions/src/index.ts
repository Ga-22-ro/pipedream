import * as admin from 'firebase-admin';
import { onCall, HttpsError } from 'firebase-functions/v2/https';
import { onDocumentWritten } from 'firebase-functions/v2/firestore';

admin.initializeApp();

export const importSheinProduct = onCall({ cors: true, maxInstances: 10 }, async (request) => {
  if (!request.auth) throw new HttpsError('unauthenticated', 'Authentication is required.');
  const url = String(request.data?.url ?? '');
  if (!/^https:\/\/(.+\.)?shein\./i.test(url)) throw new HttpsError('invalid-argument', 'A valid SHEIN URL is required.');
  const response = await fetch(url, { headers: { 'user-agent': 'Mozilla/5.0 ESRMS Importer' } });
  if (!response.ok) throw new HttpsError('unavailable', 'Unable to fetch product page.');
  const html = await response.text();
  const title = html.match(/<title>(.*?)<\/title>/i)?.[1]?.trim() ?? 'Imported SHEIN product';
  const price = html.match(/"salePrice"\s*:\s*"?([0-9.]+)/i)?.[1] ?? null;
  const images = [...html.matchAll(/https?:\\\/\\\/[^"']+?\.(?:jpg|png|webp)/gi)].slice(0, 8).map((m) => m[0].replaceAll('\\/', '/'));
  const product = { source: 'SHEIN', sourceUrl: url, name: title, price, images, importedBy: request.auth.uid, importedAt: admin.firestore.FieldValue.serverTimestamp() };
  const doc = await admin.firestore().collection('products').add(product);
  return { id: doc.id, ...product };
});

export const auditOrders = onDocumentWritten('orders/{orderId}', async (event) => {
  await admin.firestore().collection('activity_logs').add({ entity: 'orders', entityId: event.params.orderId, type: event.data?.before.exists ? 'updated' : 'created', at: admin.firestore.FieldValue.serverTimestamp() });
});
