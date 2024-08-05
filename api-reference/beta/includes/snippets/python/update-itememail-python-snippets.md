---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.item_email import ItemEmail
from msgraph_beta.generated.models.email_type import EmailType

graph_client = GraphServiceClient(credentials, scopes)

request_body = ItemEmail(
	display_name = "Business Email",
	type = EmailType.Work,
)

result = await graph_client.users.by_user_id('user-id').profile.emails.by_item_email_id('itemEmail-id').patch(request_body)


```