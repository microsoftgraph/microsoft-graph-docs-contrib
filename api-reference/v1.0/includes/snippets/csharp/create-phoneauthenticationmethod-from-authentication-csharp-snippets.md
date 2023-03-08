---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PhoneAuthenticationMethod
{
	PhoneNumber = "+1 2065555555",
	PhoneType = AuthenticationPhoneType.Mobile,
};
var result = await graphClient.Me.Authentication.PhoneMethods.PostAsync(requestBody);


```