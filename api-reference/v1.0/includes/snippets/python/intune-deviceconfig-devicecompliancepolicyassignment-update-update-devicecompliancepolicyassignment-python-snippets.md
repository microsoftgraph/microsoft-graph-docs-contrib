---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.device_compliance_policy_assignment import DeviceCompliancePolicyAssignment
from msgraph.generated.models.configuration_manager_collection_assignment_target import ConfigurationManagerCollectionAssignmentTarget

graph_client = GraphServiceClient(credentials, scopes)

request_body = DeviceCompliancePolicyAssignment(
	odata_type = "#microsoft.graph.deviceCompliancePolicyAssignment",
	target = ConfigurationManagerCollectionAssignmentTarget(
		odata_type = "microsoft.graph.configurationManagerCollectionAssignmentTarget",
		collection_id = "Collection Id value",
	),
)

result = await graph_client.device_management.device_compliance_policies.by_device_compliance_policy_id('deviceCompliancePolicy-id').assignments.by_device_compliance_policy_assignment_id('deviceCompliancePolicyAssignment-id').patch(request_body)


```