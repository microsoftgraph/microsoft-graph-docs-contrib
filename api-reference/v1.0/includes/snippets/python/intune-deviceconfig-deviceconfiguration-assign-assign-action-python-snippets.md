---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.devicemanagement.deviceconfigurations.item.assign.assign_post_request_body import AssignPostRequestBody
from msgraph.generated.models.device_configuration_assignment import DeviceConfigurationAssignment
from msgraph.generated.models.configuration_manager_collection_assignment_target import ConfigurationManagerCollectionAssignmentTarget
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AssignPostRequestBody(
	assignments = [
		DeviceConfigurationAssignment(
			odata_type = "#microsoft.graph.deviceConfigurationAssignment",
			id = "d59b6342-6342-d59b-4263-9bd542639bd5",
			target = ConfigurationManagerCollectionAssignmentTarget(
				odata_type = "microsoft.graph.configurationManagerCollectionAssignmentTarget",
				collection_id = "Collection Id value",
			),
		),
	],
)

result = await graph_client.device_management.device_configurations.by_device_configuration_id('deviceConfiguration-id').assign.post(request_body)


```