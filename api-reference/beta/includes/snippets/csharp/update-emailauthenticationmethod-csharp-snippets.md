---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new EmailAuthenticationMethod
{
	EmailAddress = "kim@contoso.com",
};
var result = await graphClient.Users["{user-id}"].Authentication.EmailMethods["{emailAuthenticationMethod-id}"].PatchAsync(requestBody);


```