---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

await graphClient.Me.Authentication.PhoneMethods["{phoneAuthenticationMethod-id}"].EnableSmsSignIn.PostAsync();


```