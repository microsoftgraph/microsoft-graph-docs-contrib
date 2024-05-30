---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessReviewInstanceDecisionItem = {
    decision: 'Approve',
    justification: 'The IT Helpdesk requires continued access to the User Administrator role to manage user account support requests, lifecycle, and access to resources'
};

await client.api('/identityGovernance/accessReviews/definitions/02800b79-1a6f-40b7-8381-c0bebc3763bd/instances/30f0cb53-da42-402e-8be5-9005f9c374f7/decisions/888007fa-1d32-4000-a359-fd1d5876a3ed')
	.post(accessReviewInstanceDecisionItem);

```