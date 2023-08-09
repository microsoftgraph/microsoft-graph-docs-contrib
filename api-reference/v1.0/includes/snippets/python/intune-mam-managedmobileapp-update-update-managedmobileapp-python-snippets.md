---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ManagedMobileApp()
request_body.@odata_type = '#microsoft.graph.managedMobileApp'

mobile_app_identifier = AndroidMobileAppIdentifier()
mobile_app_identifier.@odata_type = 'microsoft.graph.androidMobileAppIdentifier'

mobile_app_identifier.package_id = 'Package Id value'


request_body.mobile_app_identifier = mobile_app_identifier
request_body.version = 'Version value'




result = await client.device_app_management.io_managed_app_protections.by_io_managed_app_protection_id('iosManagedAppProtection-id').apps.by_app_id('managedMobileApp-id').patch(request_body = request_body)


```