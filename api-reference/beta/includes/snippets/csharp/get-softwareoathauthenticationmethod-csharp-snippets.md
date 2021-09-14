---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var softwareOathAuthenticationMethod = await graphClient.Me.Authentication.SoftwareOathMethods["{softwareOathAuthenticationMethod-id}"]
	.Request()
	.GetAsync();

```