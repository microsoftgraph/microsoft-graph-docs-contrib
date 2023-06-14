---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AdminReportSettings()
request_body.display_concealed_names = True




result = await client.admin.report_settings.patch(request_body = request_body)


```