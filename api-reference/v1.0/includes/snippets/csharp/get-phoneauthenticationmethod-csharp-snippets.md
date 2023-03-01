---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Me.Authentication.PhoneMethods["{phoneAuthenticationMethod-id}"].GetAsync();


```