---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = TargetedManagedAppPolicyAssignment(
	odata_type = "#microsoft.graph.targetedManagedAppPolicyAssignment",
	target = ConfigurationManagerCollectionAssignmentTarget(
		odata_type = "microsoft.graph.configurationManagerCollectionAssignmentTarget",
		collection_id = "Collection Id value",
	),
)

result = await graph_client.device_app_management.io_managed_app_protections.by_io_managed_app_protection_id('iosManagedAppProtection-id').assignments.by_assignment_id('targetedManagedAppPolicyAssignment-id').patch(body = request_body)


```