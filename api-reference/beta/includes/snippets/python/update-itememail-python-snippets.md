---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.item_email import ItemEmail
from msgraph_beta.generated.models.email_type import EmailType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ItemEmail(
	display_name = "Business Email",
	type = EmailType.Work,
)

result = await graph_client.users.by_user_id('user-id').profile.emails.by_item_email_id('itemEmail-id').patch(request_body)


```