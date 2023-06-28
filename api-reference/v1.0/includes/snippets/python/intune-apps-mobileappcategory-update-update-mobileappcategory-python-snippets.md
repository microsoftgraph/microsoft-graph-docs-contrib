---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = MobileAppCategory()
request_body.@odata_type = '#microsoft.graph.mobileAppCategory'

request_body.display_name = 'Display Name value'




result = await client.device_app_management.mobile_app_categories.by_mobile_app_categorie_id('mobileAppCategory-id').patch(request_body = request_body)


```