---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Users["{user-id}"].Authentication.SoftwareOathMethods["{softwareOathAuthenticationMethod-id}"]
	.Request()
	.DeleteAsync();

```