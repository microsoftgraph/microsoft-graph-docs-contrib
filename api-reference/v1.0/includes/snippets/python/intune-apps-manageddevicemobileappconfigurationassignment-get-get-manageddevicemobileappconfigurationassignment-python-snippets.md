---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.device_app_management.mobile_app_configurations.by_managed_device_mobile_app_configuration_id('managedDeviceMobileAppConfiguration-id').assignments.by_managed_device_mobile_app_configuration_assignment_id('managedDeviceMobileAppConfigurationAssignment-id').get()


```