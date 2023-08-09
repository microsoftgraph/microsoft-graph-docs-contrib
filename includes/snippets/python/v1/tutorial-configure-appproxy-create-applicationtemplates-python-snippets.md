---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = InstantiatePostRequestBody()
request_body.display_name = 'Contoso IWA App'




result = await client.application_templates.by_application_template_id('applicationTemplate-id').instantiate.post(request_body = request_body)


```