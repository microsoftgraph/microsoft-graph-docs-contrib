---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Me.MicrosoftGraphGetMemberGroups.GetMemberGroupsPostRequestBody
{
	SecurityEnabledOnly = true,
};
var result = await graphClient.Me.MicrosoftGraphGetMemberGroups.PostAsync(requestBody);


```