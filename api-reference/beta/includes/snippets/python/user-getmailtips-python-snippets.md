---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = GetMailTipsPostRequestBody(
	email_addresses = [
		"danas@contoso.onmicrosoft.com",
		"fannyd@contoso.onmicrosoft.com",
	]
	mail_tips_options = MailTipsType.AutomaticReplies | MailTipsType.MailboxFullStatus,
)

result = await graph_client.me.get_mail_tips.post(body = request_body)


```