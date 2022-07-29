---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var acceptances = await graphClient.IdentityGovernance.TermsOfUse.Agreements["{agreement-id}"].Acceptances
	.Request()
	.GetAsync();

```