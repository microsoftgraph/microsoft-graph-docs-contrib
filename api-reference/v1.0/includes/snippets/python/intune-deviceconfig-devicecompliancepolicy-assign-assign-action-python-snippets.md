---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.assign_post_request_body import AssignPostRequestBody
from msgraph.generated.models.device_compliance_policy_assignment import DeviceCompliancePolicyAssignment
from msgraph.generated.models.configuration_manager_collection_assignment_target import ConfigurationManagerCollectionAssignmentTarget

graph_client = GraphServiceClient(credentials, scopes)

request_body = AssignPostRequestBody(
	assignments = [
		DeviceCompliancePolicyAssignment(
			odata_type = "#microsoft.graph.deviceCompliancePolicyAssignment",
			id = "92dc3fef-3fef-92dc-ef3f-dc92ef3fdc92",
			target = ConfigurationManagerCollectionAssignmentTarget(
				odata_type = "microsoft.graph.configurationManagerCollectionAssignmentTarget",
				collection_id = "Collection Id value",
			),
		),
	],
)

result = await graph_client.device_management.device_compliance_policies.by_device_compliance_policy_id('deviceCompliancePolicy-id').assign.post(request_body)


```