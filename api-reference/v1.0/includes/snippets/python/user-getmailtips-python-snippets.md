---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.users.item.get_mail_tips.get_mail_tips_post_request_body import GetMailTipsPostRequestBody
from msgraph.generated.models.mail_tips_type import MailTipsType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = GetMailTipsPostRequestBody(
	email_addresses = [
		"danas@contoso.com",
		"fannyd@contoso.com",
	],
	mail_tips_options = MailTipsType.AutomaticReplies | MailTipsType.MailboxFullStatus,
)

result = await graph_client.me.get_mail_tips.post(request_body)


```