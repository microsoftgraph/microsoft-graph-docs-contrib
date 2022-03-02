---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var baseTask = new BaseTask
{
	Body = new ItemBody
	{
	},
	BodyLastModifiedDateTime = DateTimeOffset.Parse("String (timestamp)"),
	CompletedDateTime = DateTimeOffset.Parse("String (timestamp)"),
	DueDateTime = new DateTimeTimeZone
	{
	},
	StartDateTime = new DateTimeTimeZone
	{
	},
	Importance = Importance.Low,
	Recurrence = new PatternedRecurrence
	{
	},
	DisplayName = "String",
	Status = TaskStatus_v2.NotStarted,
	PersonalProperties = new PersonalTaskProperties
	{
	}
};

await graphClient.Me.Tasks.Lists["{baseTaskList-id}"].Tasks
	.Request()
	.AddAsync(baseTask);

```