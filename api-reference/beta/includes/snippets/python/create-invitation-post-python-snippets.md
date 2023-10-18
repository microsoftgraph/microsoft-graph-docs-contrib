---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = Invitation(
	invited_user_email_address = "admin@fabrikam.com",
	invite_redirect_url = "https://myapp.contoso.com",
)

result = await graph_client.invitations.post(body = request_body)


```