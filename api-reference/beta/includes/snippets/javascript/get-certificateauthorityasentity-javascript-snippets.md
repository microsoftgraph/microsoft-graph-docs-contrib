---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let certificateAuthorityAsEntity = await client.api('/directory/certificateAuthorities/certificateBasedApplicationConfigurations/15420ad7-8823-40d2-9462-8538a83b09c5/trustedCertificateAuthorities/cc96a85f-bf0e-442a-9b2b-4b4e769db5c0')
	.version('beta')
	.get();

```