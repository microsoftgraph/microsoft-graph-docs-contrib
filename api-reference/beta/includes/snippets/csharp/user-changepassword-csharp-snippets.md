---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Me.ChangePassword.ChangePasswordPostRequestBody
{
	CurrentPassword = "xWwvJ]6NMw+bWH-d",
	NewPassword = "0eM85N54wFxWwvJ]",
};
await graphClient.Me.ChangePassword.PostAsync(requestBody);


```