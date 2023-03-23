---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new OpenShift
{
	Id = "OPNSHFT_577b75d2-a927-48c0-a5d1-dc984894e7b8",
	SchedulingGroupId = "TAG_228940ed-ff84-4e25-b129-1b395cf78be0",
	SharedOpenShift = new OpenShiftItem
	{
		Notes = "InventoryManagement",
		OpenSlotCount = 2,
		DisplayName = "Dayshift",
		StartDateTime = DateTimeOffset.Parse("2018-10-04T00: 58: 45.340Z"),
		EndDateTime = DateTimeOffset.Parse("2018-10-04T09: 50: 45.332Z"),
		Theme = ScheduleEntityTheme.White,
		Activities = new List<ShiftActivity>
		{
			new ShiftActivity
			{
				IsPaid = true,
				StartDateTime = DateTimeOffset.Parse("2018-10-04T00: 58: 45.340Z"),
				EndDateTime = DateTimeOffset.Parse("2018-10-04T01: 58: 45.340Z"),
				Code = "",
				DisplayName = "Lunch",
			},
		},
	},
	DraftOpenShift = null,
	CreatedDateTime = DateTimeOffset.Parse("2019-03-14T04: 32: 51.451Z"),
	LastModifiedDateTime = DateTimeOffset.Parse("2019-03-14T05: 32: 51.451Z"),
	LastModifiedBy = new IdentitySet
	{
		Application = null,
		Device = null,
		User = new Identity
		{
			Id = "366c0b19-49b1-41b5-a03f-9f3887bd0ed8",
			DisplayName = "JohnDoe",
		},
		AdditionalData = new Dictionary<string, object>
		{
			{
				"conversation" , null
			},
		},
	},
};
var result = await graphClient.Teams["{team-id}"].Schedule.OpenShifts.PostAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("Authorization", "Bearer {token}");
});


```