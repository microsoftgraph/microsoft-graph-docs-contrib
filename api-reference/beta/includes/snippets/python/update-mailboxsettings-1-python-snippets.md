---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = MailboxSettings()
automatic_replies_setting = AutomaticRepliesSetting()
automatic_replies_setting.status(AutomaticRepliesStatus.Scheduled('automaticrepliesstatus.scheduled'))

automatic_replies_settingscheduled_start_date_time = DateTimeTimeZone()
automatic_replies_settingscheduled_start_date_time.date_time = '2016-03-20T18:00:00.0000000'

automatic_replies_settingscheduled_start_date_time.time_zone = 'UTC'


automatic_replies_setting.scheduled_start_date_time = automatic_replies_settingscheduled_start_date_time
automatic_replies_settingscheduled_end_date_time = DateTimeTimeZone()
automatic_replies_settingscheduled_end_date_time.date_time = '2016-03-28T18:00:00.0000000'

automatic_replies_settingscheduled_end_date_time.time_zone = 'UTC'


automatic_replies_setting.scheduled_end_date_time = automatic_replies_settingscheduled_end_date_time

request_body.automatic_replies_setting = automatic_replies_setting
additional_data = [
'@odata_context' => 'https://graph.microsoft.com/beta/$metadata#Me/mailboxSettings', 
];
request_body.additional_data(additional_data)





result = await client.me.mailbox_settings.patch(request_body = request_body)


```