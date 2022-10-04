---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var baseTask = new Task
{
	TextBody = "String",
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
	Viewpoint = new TaskViewpoint
	{
	}
};

await graphClient.Me.Tasks.Lists["{baseTaskList-id}"].Tasks["{baseTask-id}"]
	.Request()
	.UpdateAsync(baseTask);

```