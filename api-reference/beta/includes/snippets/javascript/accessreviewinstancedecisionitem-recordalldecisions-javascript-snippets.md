---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const recordAllDecisions = {
  decision: 'Deny',
  justification: 'Alice switched teams and no longer works with this group',
  principalId: '2043848d-e422-473c-8607-88a3319ff491',
  resourceId: '733ef921-89e1-4d7e-aeff-83612223c37e'
};

await client.api('/identityGovernance/accessReviews/decisions/filterByCurrentUser(on='reviewer')/recordAllDecisions')
	.version('beta')
	.post(recordAllDecisions);

```