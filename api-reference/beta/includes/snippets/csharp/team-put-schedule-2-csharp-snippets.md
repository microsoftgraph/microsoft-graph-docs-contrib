---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Schedule
{
	Enabled = true,
	TimeZone = "America/Chicago",
	ProvisionStatus = OperationStatus.Completed,
	ProvisionStatusCode = null,
	OpenShiftsEnabled = true,
	SwapShiftsRequestsEnabled = true,
	OfferShiftRequestsEnabled = true,
	TimeOffRequestsEnabled = true,
	TimeClockEnabled = true,
	TimeClockSettings = new TimeClockSettings
	{
		ApprovedLocation = new GeoCoordinates
		{
			Altitude = 1024.13d,
			Latitude = 26.13246d,
			Longitude = 24.34616d,
		},
	},
};
var result = await graphClient.Teams["{team-id}"].Schedule.PutAsync(requestBody);


```