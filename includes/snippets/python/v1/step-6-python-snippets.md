---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.subscription import Subscription

graph_client = GraphServiceClient(credentials, scopes)

request_body = Subscription(
	change_type = "created,updated,deleted",
	notification_url = "https://webhook.azurewebsites.net/api/send/myNotifyClient",
	resource = "/users/87d349ed-44d7-43e1-9a83-5f2406dee5bd/chats/getAllMessages?model=B",
	expiration_date_time = "2023-01-10T18:56:49.112603+00:00",
	client_state = "ClientSecret",
	include_resource_data = True,
	encryption_certificate = "MMMM/sMMMsssMsMMMsMMsMMMs4sMMsM4ssMsMsMMMss4ssMMMssss...s4sMMMMsM444ssM4MMsssMMMMsM4MMM4sMsM4MMsM44MMM4ssss4Ms4sMM4MMMMM4MMs+ss4MsMssMss4s==",
	encryption_certificate_id = "44M4444M4444M4M44MM4444MM4444MMMM44MM4M4",
)

result = await graph_client.subscriptions.post(request_body)


```