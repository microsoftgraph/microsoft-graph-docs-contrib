---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.applicationtemplates.item.instantiate.instantiate_post_request_body import InstantiatePostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = InstantiatePostRequestBody(
	display_name = "testProperties",
)

result = await graph_client.application_templates.by_application_template_id('applicationTemplate-id').instantiate.post(request_body)


```