---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.assign_post_request_body import AssignPostRequestBody
from msgraph.generated.models.targeted_managed_app_policy_assignment import TargetedManagedAppPolicyAssignment
from msgraph.generated.models.configuration_manager_collection_assignment_target import ConfigurationManagerCollectionAssignmentTarget

graph_client = GraphServiceClient(credentials, scopes)

request_body = AssignPostRequestBody(
	assignments = [
		TargetedManagedAppPolicyAssignment(
			odata_type = "#microsoft.graph.targetedManagedAppPolicyAssignment",
			id = "8b68c4a6-c4a6-8b68-a6c4-688ba6c4688b",
			target = ConfigurationManagerCollectionAssignmentTarget(
				odata_type = "microsoft.graph.configurationManagerCollectionAssignmentTarget",
				collection_id = "Collection Id value",
			),
		),
	],
)

await graph_client.device_app_management.targeted_managed_app_configurations.by_targeted_managed_app_configuration_id('targetedManagedAppConfiguration-id').assign.post(request_body)


```