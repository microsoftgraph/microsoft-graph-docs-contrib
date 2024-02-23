---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.device_app_management import DeviceAppManagement

graph_client = GraphServiceClient(credentials, scopes)

request_body = DeviceAppManagement(
	odata_type = "#microsoft.graph.deviceAppManagement",
	microsoft_store_for_business_last_successful_sync_date_time = "2016-12-31T23:57:45.2453148-08:00",
	is_enabled_for_microsoft_store_for_business = True,
	microsoft_store_for_business_language = "Microsoft Store For Business Language value",
	microsoft_store_for_business_last_completed_application_sync_time = "2017-01-01T00:02:00.0421137-08:00",
)

result = await graph_client.device_app_management.patch(request_body)


```