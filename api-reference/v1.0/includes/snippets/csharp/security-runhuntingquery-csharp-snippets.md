---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Security.MicrosoftGraphSecurityRunHuntingQuery.RunHuntingQueryPostRequestBody
{
	Query = "DeviceProcessEvents | where InitiatingProcessFileName =~ \"powershell.exe\" | project Timestamp, FileName, InitiatingProcessFileName | order by Timestamp desc | limit 2",
};
var result = await graphClient.Security.MicrosoftGraphSecurityRunHuntingQuery.PostAsync(requestBody);


```