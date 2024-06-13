---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.invitation import Invitation
from msgraph.generated.models.user import User

graph_client = GraphServiceClient(credentials, scopes)

request_body = Invitation(
	invited_user_email_address = "AdeleV@fabrikam.com",
	invite_redirect_url = "https://myapp.contoso.com",
	invited_user = User(
		id = "264e6d50-eaec-461e-b187-873b1bcf855f",
	),
	reset_redemption = True,
)

result = await graph_client.invitations.post(request_body)


```