---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SnoozeReminderPostRequestBody()
new_reminder_time = DateTimeTimeZone()
new_reminder_time.date_time = 'dateTime-value'

new_reminder_time.time_zone = 'timeZone-value'


request_body.new_reminder_time = new_reminder_time



await client.me.events.by_event_id('event-id').snooze_reminder.post(request_body = request_body)


```