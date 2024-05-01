---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.applicationtemplates.item.instantiate.instantiate_post_request_body import InstantiatePostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = InstantiatePostRequestBody(
	display_name = "AWS Contoso",
)

result = await graph_client.application_templates.by_application_template_id('applicationTemplate-id').instantiate.post(request_body)


```