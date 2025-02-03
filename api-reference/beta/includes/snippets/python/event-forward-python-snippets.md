---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.events.item.forward.forward_post_request_body import ForwardPostRequestBody
from msgraph_beta.generated.models.recipient import Recipient
from msgraph_beta.generated.models.email_address import EmailAddress
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ForwardPostRequestBody(
	to_recipients = [
		Recipient(
			email_address = EmailAddress(
				address = "danas@contoso.com",
				name = "Dana Swope",
			),
		),
	],
	comment = "Dana, hope you can make this meeting.",
)

await graph_client.me.events.by_event_id('event-id').forward.post(request_body)


```