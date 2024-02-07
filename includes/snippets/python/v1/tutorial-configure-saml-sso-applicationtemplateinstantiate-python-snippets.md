---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = InstantiatePostRequestBody(
	display_name = "AWS Contoso",
)

result = await graph_client.application_templates.by_application_template_id('applicationTemplate-id').instantiate.post(request_body)


```