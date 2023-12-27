---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = InstantiatePostRequestBody(
	display_name = "testProperties",
)

result = await graph_client.application_templates.by_application_template_id('applicationTemplate-id').instantiate.post(request_body)


```