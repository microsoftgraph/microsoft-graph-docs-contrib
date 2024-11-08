---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.mailbox_settings import MailboxSettings
from msgraph_beta.generated.models.delegate_meeting_message_delivery_options import DelegateMeetingMessageDeliveryOptions
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = MailboxSettings(
	delegate_meeting_message_delivery_options = DelegateMeetingMessageDeliveryOptions.SendToDelegateAndPrincipal,
)

result = await graph_client.users.by_user_id('user-id').mailbox_settings.patch(request_body)


```