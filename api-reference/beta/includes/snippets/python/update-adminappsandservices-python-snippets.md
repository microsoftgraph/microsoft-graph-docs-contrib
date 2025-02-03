---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.admin_apps_and_services import AdminAppsAndServices
from msgraph_beta.generated.models.apps_and_services_settings import AppsAndServicesSettings
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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