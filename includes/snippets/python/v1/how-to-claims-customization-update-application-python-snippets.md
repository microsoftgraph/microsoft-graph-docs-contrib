---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.application import Application
from msgraph.generated.models.api_application import ApiApplication
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Application(
	api = ApiApplication(
		accept_mapped_claims = True,
		requested_access_token_version = 2,
	),
)

result = await graph_client.applications.by_application_id('application-id').patch(request_body)


```