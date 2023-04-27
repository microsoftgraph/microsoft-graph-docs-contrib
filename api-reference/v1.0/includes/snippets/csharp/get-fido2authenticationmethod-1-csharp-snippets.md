---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Me.Authentication.Fido2Methods["{fido2AuthenticationMethod-id}"].GetAsync();


```