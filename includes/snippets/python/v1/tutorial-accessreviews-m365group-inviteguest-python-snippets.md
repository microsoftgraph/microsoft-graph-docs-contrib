---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Invitation(
	invited_user_display_name = "John Doe (Tailspin Toys)",
	invited_user_email_address = "john@tailspintoys.com",
	send_invitation_message = False,
	invite_redirect_url = "https://myapps.microsoft.com",
)

result = await graph_client.invitations.post(request_body)


```