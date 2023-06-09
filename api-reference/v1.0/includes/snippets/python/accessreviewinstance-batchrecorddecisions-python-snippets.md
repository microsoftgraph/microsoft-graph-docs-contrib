---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = BatchRecordDecisionsPostRequestBody()
request_body.decision = 'Approve'

request_body.justification = 'All principals with access need continued access to the resource (Marketing Group) as all the principals are on the marketing team'

request_body.resource_id = 'a5c51e59-3fcd-4a37-87a1-835c0c21488a'




await client.identity_governance.acce_reviews.definitions.by_definition_id('accessReviewScheduleDefinition-id').instances.by_instance_id('accessReviewInstance-id').batch_record_decisions.post(request_body = request_body)


```