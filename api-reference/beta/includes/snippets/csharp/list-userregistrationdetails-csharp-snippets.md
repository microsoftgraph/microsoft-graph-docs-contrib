---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var userRegistrationDetails = await graphClient.Reports.AuthenticationMethods.UserRegistrationDetails
	.Request()
	.GetAsync();

```