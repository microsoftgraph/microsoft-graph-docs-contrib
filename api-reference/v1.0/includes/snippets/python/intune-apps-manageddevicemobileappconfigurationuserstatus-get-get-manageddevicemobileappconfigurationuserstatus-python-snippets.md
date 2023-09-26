---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)


result = await graph_client.device_app_management.mobile_app_configurations.by_mobile_app_configuration_id('managedDeviceMobileAppConfiguration-id').user_statuses.by_user_statuse_id('managedDeviceMobileAppConfigurationUserStatus-id').get()


```