---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const customClaimsPolicy = {
  '@odata.type': '#microsoft.graph.customClaimsPolicy',
  includeBasicClaimSet: 'Boolean',
  includeApplicationIdInIssuer: 'Boolean',
  audienceOverride: 'String',
  claims: [
    {
      '@odata.type': 'microsoft.graph.customClaim'
    }
  ]
};

await client.api('/servicePrincipals/{servicePrincipalsId}/claimsPolicy')
	.version('beta')
	.update(customClaimsPolicy);

```