---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const selfSignedCertificate = {
    displayName: 'CN=AWSContoso',
    endDateTime: '2024-01-25T00:00:00Z'
};

await client.api('/servicePrincipals/a750f6cf-2319-464a-bcc3-456926736a91/addTokenSigningCertificate')
	.post(selfSignedCertificate);

```