---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.deviceappmanagement.targetedmanagedappconfigurations.item.assign.assign_post_request_body import AssignPostRequestBody
from msgraph.generated.models.targeted_managed_app_policy_assignment import TargetedManagedAppPolicyAssignment
from msgraph.generated.models.configuration_manager_collection_assignment_target import ConfigurationManagerCollectionAssignmentTarget
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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