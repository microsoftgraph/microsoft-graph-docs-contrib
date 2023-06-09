---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Application()
request_body.IdentifierUris(['https://contosoiwaapp-contoso.msappproxy.net', ])

web = WebApplication()
web.RedirectUris(['https://contosoiwaapp-contoso.msappproxy.net', ])

web.home_page_url = 'https://contosoiwaapp-contoso.msappproxy.net'


request_body.web = web



result = await client.applications.by_application_id('application-id').patch(request_body = request_body)


```