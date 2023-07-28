---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ManagedAppOperation()
request_body.@odata_type = '#microsoft.graph.managedAppOperation'

request_body.display_name = 'Display Name value'

request_body.state = 'State value'

request_body.version = 'Version value'




result = await client.device_app_management.managed_app_registrations.by_managed_app_registration_id('managedAppRegistration-id').operations.by_operation_id('managedAppOperation-id').patch(request_body = request_body)


```