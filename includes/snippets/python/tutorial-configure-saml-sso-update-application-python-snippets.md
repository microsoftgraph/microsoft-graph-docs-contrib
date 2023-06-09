---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Application()
web = WebApplication()
web.RedirectUris(['https://signin.aws.amazon.com/saml', ])


request_body.web = web
request_body.IdentifierUris(['https://signin.aws.amazon.com/saml', ])




result = await client.applications.by_application_id('application-id').patch(request_body = request_body)


```