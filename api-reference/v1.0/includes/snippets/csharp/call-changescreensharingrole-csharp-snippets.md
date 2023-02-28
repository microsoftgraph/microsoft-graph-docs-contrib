---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Communications.Calls.Item.MicrosoftGraphChangeScreenSharingRole.ChangeScreenSharingRolePostRequestBody
{
	Role = ScreenSharingRole.Viewer,
};
await graphClient.Communications.Calls["call-id"].MicrosoftGraphChangeScreenSharingRole.PostAsync(requestBody);


```