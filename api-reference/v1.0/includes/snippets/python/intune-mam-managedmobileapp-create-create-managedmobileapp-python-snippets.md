---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = ManagedMobileApp(
	odata_type = "#microsoft.graph.managedMobileApp",
	mobile_app_identifier = AndroidMobileAppIdentifier(
		odata_type = "microsoft.graph.androidMobileAppIdentifier",
		package_id = "Package Id value",
	),
	version = "Version value",
)

result = await graph_client.device_app_management.io_managed_app_protections.by_io_managed_app_protection_id('iosManagedAppProtection-id').apps.post(body = request_body)


```