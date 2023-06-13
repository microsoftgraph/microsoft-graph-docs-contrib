---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Me.ChangePassword.ChangePasswordPostRequestBody
{
	CurrentPassword = "xWwvJ]6NMw+bWH-d",
	NewPassword = "0eM85N54wFxWwvJ]",
};
await graphClient.Me.ChangePassword.PostAsync(requestBody);


```