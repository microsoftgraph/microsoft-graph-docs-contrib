---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new UserScopeTeamsAppInstallation
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"teamsApp@odata.bind" , "https://graph.microsoft.com/beta/appCatalogs/teamsApps/12345678-9abc-def0-123456789a"
		},
	},
};
var result = await graphClient.Users["{user-id}"].Teamwork.InstalledApps.PostAsync(requestBody);


```