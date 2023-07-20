---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AdminAppsAndServices()
request_body.@odata_type = '#microsoft.graph.adminAppsAndServices'

settings = AppsAndServicesSettings()
settings.@odata_type = 'microsoft.graph.appsAndServicesSettings'

settings.is_office_store_enabled = False

settings.is_app_and_services_trial_enabled = False


request_body.settings = settings



result = await client.admin.app_and_services.patch(request_body = request_body)


```