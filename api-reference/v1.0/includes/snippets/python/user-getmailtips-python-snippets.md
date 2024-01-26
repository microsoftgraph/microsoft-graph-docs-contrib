---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = GetMailTipsPostRequestBody(
	email_addresses = [
		"danas@contoso.onmicrosoft.com",
		"fannyd@contoso.onmicrosoft.com",
	],
	mail_tips_options = MailTipsType.AutomaticReplies | MailTipsType.MailboxFullStatus,
)

result = await graph_client.me.get_mail_tips.post(request_body)


```