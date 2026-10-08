---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const customAuthenticationExtension = {
    '@odata.type': '#microsoft.graph.onVerifiedIdClaimValidationCustomExtension',
    displayName: 'Verified ID Claim Validation (updated)',
    description: 'Updated description for Verified ID claim validation'
};

await client.api('/identity/customAuthenticationExtensions/6a0a3429-be77-0aed-951e-1c8aed62bf8a')
	.version('beta')
	.update(customAuthenticationExtension);

```