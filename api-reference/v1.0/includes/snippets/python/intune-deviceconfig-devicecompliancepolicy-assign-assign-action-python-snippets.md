---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.devicemanagement.devicecompliancepolicies.item.assign.assign_post_request_body import AssignPostRequestBody
from msgraph.generated.models.device_compliance_policy_assignment import DeviceCompliancePolicyAssignment
from msgraph.generated.models.configuration_manager_collection_assignment_target import ConfigurationManagerCollectionAssignmentTarget
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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