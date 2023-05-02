---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Users.Item.Authentication.Methods.Item.ResetPassword.ResetPasswordPostRequestBody
{
	NewPassword = "Cuyo5459",
};
var result = await graphClient.Users["{user-id}"].Authentication.Methods["{authenticationMethod-id}"].ResetPassword.PostAsync(requestBody);


```