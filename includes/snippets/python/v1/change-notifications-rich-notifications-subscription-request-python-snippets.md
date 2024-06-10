---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.subscription import Subscription

graph_client = GraphServiceClient(credentials, scopes)

request_body = Subscription(
	change_type = "created,updated",
	notification_url = "https://webhook.azurewebsites.net/api/resourceNotifications",
	resource = "/teams/{id}/channels/{id}/messages",
	include_resource_data = True,
	encryption_certificate = "{base64encodedCertificate}",
	encryption_certificate_id = "{customId}",
	expiration_date_time = "2019-09-19T11:00:00.0000000Z",
	client_state = "{secretClientState}",
)

result = await graph_client.subscriptions.post(request_body)


```