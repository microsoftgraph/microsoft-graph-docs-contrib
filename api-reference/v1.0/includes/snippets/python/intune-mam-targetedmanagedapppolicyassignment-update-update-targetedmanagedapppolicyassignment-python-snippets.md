---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.targeted_managed_app_policy_assignment import TargetedManagedAppPolicyAssignment
from msgraph.generated.models.configuration_manager_collection_assignment_target import ConfigurationManagerCollectionAssignmentTarget
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TargetedManagedAppPolicyAssignment(
	odata_type = "#microsoft.graph.targetedManagedAppPolicyAssignment",
	target = ConfigurationManagerCollectionAssignmentTarget(
		odata_type = "microsoft.graph.configurationManagerCollectionAssignmentTarget",
		collection_id = "Collection Id value",
	),
)

result = await graph_client.device_app_management.ios_managed_app_protections.by_ios_managed_app_protection_id('iosManagedAppProtection-id').assignments.by_targeted_managed_app_policy_assignment_id('targetedManagedAppPolicyAssignment-id').patch(request_body)


```