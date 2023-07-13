---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PhoneAuthenticationMethod
{
	PhoneNumber = "+1 2065555554",
	PhoneType = AuthenticationPhoneType.Mobile,
};
var result = await graphClient.Users["{user-id}"].Authentication.PhoneMethods["{phoneAuthenticationMethod-id}"].PatchAsync(requestBody);


```