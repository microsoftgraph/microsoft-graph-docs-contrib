---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = TermsAndConditionsAssignment(
	odata_type = "#microsoft.graph.termsAndConditionsAssignment",
	target = ConfigurationManagerCollectionAssignmentTarget(
		odata_type = "microsoft.graph.configurationManagerCollectionAssignmentTarget",
		collection_id = "Collection Id value",
	),
)

result = await graph_client.device_management.term_and_conditions.by_term_and_condition_id('termsAndConditions-id').assignments.by_assignment_id('termsAndConditionsAssignment-id').patch(body = request_body)


```