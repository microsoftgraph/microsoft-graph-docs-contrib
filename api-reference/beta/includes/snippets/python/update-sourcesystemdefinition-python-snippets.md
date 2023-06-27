---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SourceSystemDefinition()
request_body.vendor = 'LMS Vendor'




result = await client.external.industry_data.source_systems.by_source_system_id('sourceSystemDefinition-id').patch(request_body = request_body)


```