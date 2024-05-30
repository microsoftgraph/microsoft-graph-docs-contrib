---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Me.ChangePassword;

var requestBody = new ChangePasswordPostRequestBody
{
	CurrentPassword = "xWwvJ]6NMw+bWH-d",
	NewPassword = "0eM85N54wFxWwvJ]",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Me.ChangePassword.PostAsync(requestBody);


```