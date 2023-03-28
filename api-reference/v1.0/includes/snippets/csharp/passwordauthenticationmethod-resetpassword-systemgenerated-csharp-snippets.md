---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Users["{user-id}"].Authentication.Methods["{authenticationMethod-id}"].ResetPassword.PostAsync(null);


```