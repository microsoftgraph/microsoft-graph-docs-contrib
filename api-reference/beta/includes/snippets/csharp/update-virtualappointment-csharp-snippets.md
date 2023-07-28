---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new VirtualAppointment
{
	OdataType = "#microsoft.graph.virtualAppointment",
	Id = "0c7fda79-ff00-f57f-37e3-28183b6d09b5",
	Settings = new VirtualAppointmentSettings
	{
		OdataType = "microsoft.graph.virtualAppointmentSettings",
		AllowClientToJoinUsingBrowser = true,
	},
	AppointmentClients = new List<VirtualAppointmentUser>
	{
		new VirtualAppointmentUser
		{
			OdataType = "microsoft.graph.virtualAppointmentUser",
			EmailAddress = "gradya@contoso.com",
			DisplayName = "Grady Archie",
			SmsCapablePhoneNumber = "123-456-7890",
		},
	},
	ExternalAppointmentId = "AAMkADKnAAA=",
	ExternalAppointmentUrl = "https://anyschedulingsystem.com/api/appointments/MkADKnAAA=",
	AppointmentClientJoinWebUrl = "https://visit.teams.microsoft.com/webrtc-svc/api/route?tid=a796be92-&convId=19:meeting_=True",
};
var result = await graphClient.Me.OnlineMeetings["{onlineMeeting-id}"].VirtualAppointment.PatchAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("If-Match", "W/\"ZfYdV7Meckeip07P//nwjAAADyI7NQ==\"");
});


```