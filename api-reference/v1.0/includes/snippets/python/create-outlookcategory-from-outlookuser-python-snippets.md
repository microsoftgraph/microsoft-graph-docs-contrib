---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = OutlookCategory()
request_body.display_name = 'Project expenses'

request_body.color(CategoryColor.Preset9('categorycolor.preset9'))




result = await client.me.outlook.master_categories.post(request_body = request_body)


```