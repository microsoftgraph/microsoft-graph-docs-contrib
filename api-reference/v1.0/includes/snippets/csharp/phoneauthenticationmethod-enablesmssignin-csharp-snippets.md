---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

await graphClient.Me.Authentication.PhoneMethods["{phoneAuthenticationMethod-id}"].EnableSmsSignIn.PostAsync();


```