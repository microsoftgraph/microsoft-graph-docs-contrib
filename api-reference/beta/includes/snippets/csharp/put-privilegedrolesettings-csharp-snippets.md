---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.PrivilegedRoles.Item.Settings.SettingsPutRequestBody
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"id" , "9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3"
		},
		{
			"elevationDuration" , "PT8H"
		},
		{
			"notificationToUserOnElevation" , false
		},
		{
			"ticketingInfoOnElevation" , true
		},
		{
			"mfaOnElevation" , false
		},
		{
			"maxElavationDuration" , "PT0S"
		},
		{
			"minElevationDuration" , "PT0S"
		},
		{
			"lastGlobalAdmin" , false
		},
		{
			"isMfaOnElevationConfigurable" , true
		},
		{
			"approvalOnElevation" , false
		},
		{
			"approverIds" , new List<string>
			{
				"e2b2a2fb-13d7-495c-adc9-941fe966793f",
				"22770e3f-b9b4-418e-9dea-d0e3d2f275dd",
			}
		},
	},
};
await graphClient.PrivilegedRoles["{privilegedRole-id}"].Settings.PutAsync(requestBody);


```