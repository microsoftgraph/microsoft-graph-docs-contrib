---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new B2cAuthenticationMethodsPolicy
{
	IsEmailPasswordAuthenticationEnabled = false,
	IsUserNameAuthenticationEnabled = true,
	IsPhoneOneTimePasswordAuthenticationEnabled = true,
};
var result = await graphClient.Policies.B2cAuthenticationMethodsPolicy.PatchAsync(requestBody);


```