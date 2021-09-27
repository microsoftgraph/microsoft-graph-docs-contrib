---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var softwareOathMethods = await graphClient.Me.Authentication.SoftwareOathMethods
	.Request()
	.GetAsync();

```