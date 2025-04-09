---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.web_account import WebAccount
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = WebAccount(
	web_url = "https://github.com/innocenty.popov",
)

result = await graph_client.me.profile.web_accounts.by_web_account_id('webAccount-id').patch(request_body)


```