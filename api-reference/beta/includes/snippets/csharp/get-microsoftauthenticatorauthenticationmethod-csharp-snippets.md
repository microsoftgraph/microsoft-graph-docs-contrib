---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var microsoftAuthenticatorAuthenticationMethod = await graphClient.Users["anirban@contoso.com"].Authentication.MicrosoftAuthenticatorMethods["_jpuR-TGZtk6aQCLF3BQjA2"]
	.Request()
	.GetAsync();

```