---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.invitation import Invitation
from msgraph.generated.models.user import User
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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