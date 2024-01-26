---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



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