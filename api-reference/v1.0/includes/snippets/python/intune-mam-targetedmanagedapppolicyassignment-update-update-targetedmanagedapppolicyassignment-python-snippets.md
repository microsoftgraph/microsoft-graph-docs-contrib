---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.targeted_managed_app_policy_assignment import TargetedManagedAppPolicyAssignment
from msgraph.generated.models.configuration_manager_collection_assignment_target import ConfigurationManagerCollectionAssignmentTarget

graph_client = GraphServiceClient(credentials, scopes)

request_body = TargetedManagedAppPolicyAssignment(
	odata_type = "#microsoft.graph.targetedManagedAppPolicyAssignment",
	target = ConfigurationManagerCollectionAssignmentTarget(
		odata_type = "microsoft.graph.configurationManagerCollectionAssignmentTarget",
		collection_id = "Collection Id value",
	),
)

result = await graph_client.device_app_management.ios_managed_app_protections.by_ios_managed_app_protection_id('iosManagedAppProtection-id').assignments.by_targeted_managed_app_policy_assignment_id('targetedManagedAppPolicyAssignment-id').patch(request_body)


```