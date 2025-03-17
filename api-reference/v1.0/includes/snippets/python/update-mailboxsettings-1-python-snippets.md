---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.mailbox_settings import MailboxSettings
from msgraph.generated.models.automatic_replies_setting import AutomaticRepliesSetting
from msgraph.generated.models.automatic_replies_status import AutomaticRepliesStatus
from msgraph.generated.models.date_time_time_zone import DateTimeTimeZone
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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
			"@odata_context" : "https://graph.microsoft.com/v1.0/$metadata#Me/mailboxSettings",
	}
)

result = await graph_client.me.mailbox_settings.patch(request_body)


```