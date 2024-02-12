---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.invitation import Invitation

graph_client = GraphServiceClient(credentials, scopes)

request_body = Invitation(
	invited_user_display_name = "John Doe (Tailspin Toys)",
	invited_user_email_address = "john@tailspintoys.com",
	send_invitation_message = False,
	invite_redirect_url = "https://myapps.microsoft.com",
)

result = await graph_client.invitations.post(request_body)


```