---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DeviceConfigurationAssignment()
request_body.@odata_type = '#microsoft.graph.deviceConfigurationAssignment'

target = ConfigurationManagerCollectionAssignmentTarget()
target.@odata_type = 'microsoft.graph.configurationManagerCollectionAssignmentTarget'

target.collection_id = 'Collection Id value'


request_body.target = target



result = await client.device_management.device_configurations.by_device_configuration_id('deviceConfiguration-id').assignments.by_assignment_id('deviceConfigurationAssignment-id').patch(request_body = request_body)


```