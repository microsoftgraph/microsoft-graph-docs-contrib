
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var scheduledEndDateTime = new DateTimeTimeZone
{
	DateTime = "2016-03-28T18:00:00",
	TimeZone = "UTC",
};

var scheduledStartDateTime = new DateTimeTimeZone
{
	DateTime = "2016-03-20T18:00:00",
	TimeZone = "UTC",
};

var automaticRepliesSetting = new AutomaticRepliesSetting
{
	Status = AutomaticRepliesStatus.Scheduled,
	ScheduledStartDateTime = scheduledStartDateTime,
	ScheduledEndDateTime = scheduledEndDateTime,
};

var mailboxSettings = new MailboxSettings
{
	AutomaticRepliesSetting = automaticRepliesSetting,
};

var me = new User();
me.MailboxSettings = mailboxSettings;

await graphClient.Me
	.Request()
	.UpdateAsync(me);

```