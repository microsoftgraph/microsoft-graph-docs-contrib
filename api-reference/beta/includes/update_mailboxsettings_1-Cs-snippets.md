---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var mailboxSettings = new MailboxSettings
{
	AutomaticRepliesSetting = new AutomaticRepliesSetting
	{
		Status = AutomaticRepliesStatus.Scheduled,
		ScheduledStartDateTime = new DateTimeTimeZone
		{
			DateTime = "2016-03-20T18:00:00",
			TimeZone = "UTC"
		},
		ScheduledEndDateTime = new DateTimeTimeZone
		{
			DateTime = "2016-03-28T18:00:00",
			TimeZone = "UTC"
		}
	}
};

var me = new User();
me.MailboxSettings = mailboxSettings;

await graphClient.Me
	.Request()
	.UpdateAsync(me);

```