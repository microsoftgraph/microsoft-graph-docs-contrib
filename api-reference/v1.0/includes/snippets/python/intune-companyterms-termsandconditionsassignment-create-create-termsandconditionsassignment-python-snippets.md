---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.terms_and_conditions_assignment import TermsAndConditionsAssignment
from msgraph.generated.models.configuration_manager_collection_assignment_target import ConfigurationManagerCollectionAssignmentTarget

graph_client = GraphServiceClient(credentials, scopes)

request_body = TermsAndConditionsAssignment(
	odata_type = "#microsoft.graph.termsAndConditionsAssignment",
	target = ConfigurationManagerCollectionAssignmentTarget(
		odata_type = "microsoft.graph.configurationManagerCollectionAssignmentTarget",
		collection_id = "Collection Id value",
	),
)

result = await graph_client.device_management.terms_and_conditions.by_terms_and_conditions_id('termsAndConditions-id').assignments.post(request_body)


```