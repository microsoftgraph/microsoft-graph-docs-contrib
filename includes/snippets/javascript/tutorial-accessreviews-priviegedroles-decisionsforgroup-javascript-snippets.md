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

await client.api('/identityGovernance/accessReviews/definitions/57457d7c-af59-470c-ae71-aa72c657fe0f/instances/ad0dd148-5d16-4cfd-86e9-ab502f819aaf/decisions/62fd1c5b-04b8-4703-9fd7-dce6232c3775')
	.post(accessReviewInstanceDecisionItem);

```