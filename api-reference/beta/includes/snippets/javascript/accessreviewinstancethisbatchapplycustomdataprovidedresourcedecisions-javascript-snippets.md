---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const batchApplyCustomDataProvidedResourceDecisions = {
  applyResult: 'appliedSuccessfully',
  applyDescription: 'Access was removed from production application: GitHub-app.',
  customDataProvidedResourceId: '5c728447-be5c-4565-b4d3-cb248b609891'
};

await client.api('/identityGovernance/accessReviews/definitions/{accessReviewScheduleDefinitionId}/instances/{accessReviewInstanceId}/batchApplyCustomDataProvidedResourceDecisions')
	.version('beta')
	.post(batchApplyCustomDataProvidedResourceDecisions);

```