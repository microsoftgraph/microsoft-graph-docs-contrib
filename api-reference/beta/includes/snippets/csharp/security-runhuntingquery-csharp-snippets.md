---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Security.SecurityRunHuntingQuery.RunHuntingQueryPostRequestBody
{
	Query = "DeviceProcessEvents | where InitiatingProcessFileName =~ \"powershell.exe\" | project Timestamp, FileName, InitiatingProcessFileName | order by Timestamp desc | limit 2",
};
var result = await graphClient.Security.SecurityRunHuntingQuery.PostAsync(requestBody);


```