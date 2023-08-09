---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ContentType()
request_body.name = 'docSet'

request_body.description = 'custom docset'

base = ContentType()
base.name = 'Document Set'

base.id = '0x0120D520'


request_body.base = base
request_body.group = 'Document Set Content Types'




result = await client.sites.by_site_id('site-id').content_types.post(request_body = request_body)


```