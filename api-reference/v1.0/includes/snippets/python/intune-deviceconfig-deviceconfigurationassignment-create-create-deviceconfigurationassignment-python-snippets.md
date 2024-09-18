---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.device_configuration_assignment import DeviceConfigurationAssignment
from msgraph.generated.models.configuration_manager_collection_assignment_target import ConfigurationManagerCollectionAssignmentTarget

graph_client = GraphServiceClient(credentials, scopes)

request_body = DeviceConfigurationAssignment(
	odata_type = "#microsoft.graph.deviceConfigurationAssignment",
	target = ConfigurationManagerCollectionAssignmentTarget(
		odata_type = "microsoft.graph.configurationManagerCollectionAssignmentTarget",
		collection_id = "Collection Id value",
	),
)

result = await graph_client.device_management.device_configurations.by_device_configuration_id('deviceConfiguration-id').assignments.post(request_body)


```