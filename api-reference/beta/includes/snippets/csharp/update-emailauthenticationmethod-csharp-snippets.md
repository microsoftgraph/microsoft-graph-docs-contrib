---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new EmailAuthenticationMethod
{
	EmailAddress = "kim@contoso.com",
};
var result = await graphClient.Users["{user-id}"].Authentication.EmailMethods["{emailAuthenticationMethod-id}"].PatchAsync(requestBody);


```