---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.remove_key_post_request_body import RemoveKeyPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = RemoveKeyPostRequestBody(
	key_id = UUID("f0b0b335-1d71-4883-8f98-567911bfdca6"),
	proof = "eyJ0eXAiOiJ...",
)

await graph_client.applications.by_application_id('application-id').remove_key.post(request_body)


```