---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const claimsMappingPolicy = {
 definition: [
   '{\"ClaimsMappingPolicy\':{\'Version\':1,\'IncludeBasicClaimSet\':\'true\",\"ClaimsSchema\':[{\'Source\':\'user\",\"ID\':\'department\",\"JwtClaimType\':\"department\"}]}}"
 ],
 displayName: 'ExtraClaimsTest'
};

await client.api('/policies/claimsMappingPolicies')
	.version('beta')
	.post(claimsMappingPolicy);

```