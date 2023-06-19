---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Tag()
request_body.description = 'This is an updated description.'




result = await client.compliance.ediscovery.cases.by_case_id('case-id').tags.by_tag_id('tag-id').patch(request_body = request_body)


```