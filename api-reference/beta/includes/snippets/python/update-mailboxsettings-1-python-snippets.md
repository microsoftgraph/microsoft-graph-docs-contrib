---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.mailbox_settings import MailboxSettings
from msgraph.generated.models.automatic_replies_setting import AutomaticRepliesSetting
from msgraph.generated.models.date_time_time_zone import DateTimeTimeZone

graph_client = GraphServiceClient(credentials, scopes)

request_body = MailboxSettings(
	automatic_replies_setting = AutomaticRepliesSetting(
		status = AutomaticRepliesStatus.Scheduled,
		scheduled_start_date_time = DateTimeTimeZone(
			date_time = "2016-03-20T18:00:00.0000000",
			time_zone = "UTC",
		),
		scheduled_end_date_time = DateTimeTimeZone(
			date_time = "2016-03-28T18:00:00.0000000",
			time_zone = "UTC",
		),
	),
	additional_data = {
			"@odata_context" : "https://graph.microsoft.com/beta/$metadata#Me/mailboxSettings",
	}
)

result = await graph_client.me.mailbox_settings.patch(request_body)


```