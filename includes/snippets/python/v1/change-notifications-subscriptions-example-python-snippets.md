---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.subscription import Subscription
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Subscription(
	change_type = "created,updated",
	notification_url = "https://webhook.azurewebsites.net/notificationClient",
	lifecycle_notification_url = "https://webhook.azurewebsites.net/api/lifecycleNotifications",
	resource = "/me/mailfolders('inbox')/messages",
	expiration_date_time = "2016-03-20T11:00:00.0000000Z",
	client_state = "SecretClientState",
)

result = await graph_client.subscriptions.post(request_body)


```