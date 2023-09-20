---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = InstantiatePostRequestBody(
	display_name = "Contoso IWA App",
)

result = await graph_client.application_templates.by_application_template_id('applicationTemplate-id').instantiate.post(body = request_body)


```