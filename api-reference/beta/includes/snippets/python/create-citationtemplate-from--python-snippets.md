---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CitationTemplate()
request_body.@odata_type = '#microsoft.graph.security.citationTemplate'

request_body.display_name = 'String'

created_by = IdentitySet()
created_by.@odata_type = 'microsoft.graph.identitySet'


request_body.created_by = created_by
request_body.citation_url = 'String'

request_body.citation_jurisdiction = 'String'




result = await client.security.labels.citations.post(request_body = request_body)


```