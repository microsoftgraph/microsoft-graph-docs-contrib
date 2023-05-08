---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PlannerTask
{
	Assignments = new PlannerAssignments
	{
		AdditionalData = new Dictionary<string, object>
		{
			{
				"fbab97d0-4932-4511-b675-204639209557" , new 
				{
					OdataType = "#microsoft.graph.plannerAssignment",
					OrderHint = "N9917 U2883!",
				}
			},
		},
	},
	AppliedCategories = new PlannerAppliedCategories
	{
		AdditionalData = new Dictionary<string, object>
		{
			{
				"category3" , true
			},
			{
				"category4" , false
			},
		},
	},
	Recurrence = new PlannerTaskRecurrence
	{
		Schedule = new PlannerRecurrenceSchedule
		{
			Pattern = new RecurrencePattern
			{
				Type = RecurrencePatternType.Daily,
				Interval = 3,
			},
			PatternStartDateTime = DateTimeOffset.Parse("2022-02-22T02:10:33Z"),
		},
	},
};
var result = await graphClient.Planner.Tasks["{plannerTask-id}"].PatchAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("Prefer", "return=representation");
	requestConfiguration.Headers.Add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"");
});


```