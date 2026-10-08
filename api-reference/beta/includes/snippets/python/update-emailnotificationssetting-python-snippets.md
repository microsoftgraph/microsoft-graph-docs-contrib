---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.email_notifications_setting import EmailNotificationsSetting
from msgraph_beta.generated.models.notification_events_type import NotificationEventsType
from msgraph_beta.generated.models.notification_recipients import NotificationRecipients
from msgraph_beta.generated.models.notification_recipients_type import NotificationRecipientsType
from msgraph_beta.generated.models.email_identity import EmailIdentity
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EmailNotificationsSetting(
	is_enabled = True,
	additional_events = NotificationEventsType.RestoreAndPolicyUpdates,
	recipients = NotificationRecipients(
		role = NotificationRecipientsType.Custom,
		custom_recipients = [
			EmailIdentity(
				email = "amala@contoso.com",
			),
			EmailIdentity(
				email = "conrad@contoso.com",
			),
			EmailIdentity(
				email = "lothar@contoso.com",
			),
		],
	),
)

result = await graph_client.solutions.backup_restore.email_notifications_setting.patch(request_body)


```