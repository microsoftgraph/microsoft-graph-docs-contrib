---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.admin_apps_and_services import AdminAppsAndServices
from msgraph.generated.models.apps_and_services_settings import AppsAndServicesSettings

graph_client = GraphServiceClient(credentials, scopes)

request_body = AdminAppsAndServices(
	odata_type = "#microsoft.graph.adminAppsAndServices",
	settings = AppsAndServicesSettings(
		odata_type = "microsoft.graph.appsAndServicesSettings",
		is_office_store_enabled = False,
		is_app_and_services_trial_enabled = False,
	),
)

result = await graph_client.admin.apps_and_services.patch(request_body)


```