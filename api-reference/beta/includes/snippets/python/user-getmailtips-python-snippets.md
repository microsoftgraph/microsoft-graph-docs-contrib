---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.get_mail_tips.get_mail_tips_post_request_body import GetMailTipsPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = GetMailTipsPostRequestBody(
	email_addresses = [
		"danas@contoso.com",
		"fannyd@contoso.com",
	],
	mail_tips_options = MailTipsType.AutomaticReplies | MailTipsType.MailboxFullStatus,
)

result = await graph_client.me.get_mail_tips.post(request_body)


```