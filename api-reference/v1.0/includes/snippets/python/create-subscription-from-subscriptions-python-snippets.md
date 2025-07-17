---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.subscription import Subscription
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Subscription(
	change_type = "created",
	notification_url = "https://webhook.azurewebsites.net/api/send/myNotifyClient",
	resource = "me/mailFolders('Inbox')/messages",
	expiration_date_time = "2016-11-20T18:23:45.9356913Z",
	client_state = "secretClientValue",
	latest_supported_tls_version = "v1_2",
)

result = await graph_client.subscriptions.post(request_body)


```