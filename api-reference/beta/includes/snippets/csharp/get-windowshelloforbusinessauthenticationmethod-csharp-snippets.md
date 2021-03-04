---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var windowsHelloForBusinessAuthenticationMethod = await graphClient.Users["annie@contoso.com"].Authentication.WindowsHelloForBusinessMethods["_jpuR-TGZtk6aQCLF3BQjA2"]
	.Request()
	.GetAsync();

```