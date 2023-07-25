---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = TermsAndConditionsAssignment()
request_body.@odata_type = '#microsoft.graph.termsAndConditionsAssignment'

target = ConfigurationManagerCollectionAssignmentTarget()
target.@odata_type = 'microsoft.graph.configurationManagerCollectionAssignmentTarget'

target.collection_id = 'Collection Id value'


request_body.target = target



result = await client.device_management.term_and_conditions.by_term_and_condition_id('termsAndConditions-id').assignments.by_assignment_id('termsAndConditionsAssignment-id').patch(request_body = request_body)


```