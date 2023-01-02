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
    justification: 'Aline Dupuy should join an allowed group to maintain access to the User Administrator role. For more details, refer to the company policy \'#132487: Privileged roles\''
};

await client.api('/identityGovernance/accessReviews/definitions/57457d7c-af59-470c-ae71-aa72c657fe0f/instances/ad0dd148-5d16-4cfd-86e9-ab502f819aaf/decisions/4d79fbf6-36e6-430b-ba0a-2a727a480303')
	.post(accessReviewInstanceDecisionItem);

```