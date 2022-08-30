---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.mailbox_settings import MailboxSettings

graph_client = GraphServiceClient(credentials, scopes)

request_body = MailboxSettings(
	delegate_meeting_message_delivery_options = DelegateMeetingMessageDeliveryOptions.SendToDelegateAndPrincipal,
)

result = await graph_client.users.by_user_id('user-id').mailbox_settings.patch(request_body)


```