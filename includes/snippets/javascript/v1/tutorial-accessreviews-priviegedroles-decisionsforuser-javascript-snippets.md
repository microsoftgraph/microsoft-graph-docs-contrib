---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessReviewInstanceDecisionItem = {
    decision: 'Deny',
    justification: 'Adele should join an allowed group to maintain access to the User Administrator role. For more details, refer to the company policy \'#132487: Administrative roles\''
};

await client.api('/identityGovernance/accessReviews/definitions/02800b79-1a6f-40b7-8381-c0bebc3763bd/instances/30f0cb53-da42-402e-8be5-9005f9c374f7/decisions/25bf64c2-2396-4efc-9bb8-e9dc39ee0441')
	.post(accessReviewInstanceDecisionItem);

```