---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.applications.item.remove_password.remove_password_post_request_body import RemovePasswordPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = RemovePasswordPostRequestBody(
	key_id = UUID("f0b0b335-1d71-4883-8f98-567911bfdca6"),
)

await graph_client.applications.by_application_id('application-id').remove_password.post(request_body)


```