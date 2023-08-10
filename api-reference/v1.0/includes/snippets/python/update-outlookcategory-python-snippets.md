---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = OutlookCategory()
request_body.color(CategoryColor.Preset15('categorycolor.preset15'))




result = await client.me.outlook.master_categories.by_master_categorie_id('outlookCategory-id').patch(request_body = request_body)


```