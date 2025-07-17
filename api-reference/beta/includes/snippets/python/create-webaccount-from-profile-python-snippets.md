---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.web_account import WebAccount
from msgraph_beta.generated.models.service_information import ServiceInformation
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = WebAccount(
	description = "My Github contributions!",
	user_id = "innocenty.popov",
	service = ServiceInformation(
		name = "GitHub",
		web_url = "https://github.com",
	),
)

result = await graph_client.me.profile.web_accounts.post(request_body)


```