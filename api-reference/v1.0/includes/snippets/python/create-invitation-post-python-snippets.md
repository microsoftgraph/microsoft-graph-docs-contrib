---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = Invitation(
	invited_user_email_address = "admin@fabrikam.com",
	invite_redirect_url = "https://myapp.contoso.com",
)

result = await graph_client.invitations.post(request_body)


```