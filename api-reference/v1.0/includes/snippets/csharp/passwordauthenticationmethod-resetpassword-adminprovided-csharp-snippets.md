---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Users.Item.Authentication.Methods.Item.ResetPassword;

var requestBody = new ResetPasswordPostRequestBody
{
	NewPassword = "Cuyo5459",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Users["{user-id}"].Authentication.Methods["{authenticationMethod-id}"].ResetPassword.PostAsync(requestBody);


```