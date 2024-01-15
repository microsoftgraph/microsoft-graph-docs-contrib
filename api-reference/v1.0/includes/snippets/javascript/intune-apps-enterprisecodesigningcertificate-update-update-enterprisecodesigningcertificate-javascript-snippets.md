---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const enterpriseCodeSigningCertificate = {
  '@odata.type': '#microsoft.graph.enterpriseCodeSigningCertificate',
  content: 'Y29udGVudA==',
  status: 'provisioned',
  subjectName: 'Subject Name value',
  subject: 'Subject value',
  issuerName: 'Issuer Name value',
  issuer: 'Issuer value',
  expirationDateTime: '2016-12-31T23:57:57.2481234-08:00',
  uploadDateTime: '2016-12-31T23:58:46.5747426-08:00'
};

await client.api('/deviceAppManagement/enterpriseCodeSigningCertificates/{enterpriseCodeSigningCertificateId}')
	.version('beta')
	.update(enterpriseCodeSigningCertificate);

```