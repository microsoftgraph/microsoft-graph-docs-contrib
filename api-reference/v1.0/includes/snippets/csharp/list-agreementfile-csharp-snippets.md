---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var agreementFile = await graphClient.IdentityGovernance.TermsOfUse.Agreements["{agreement-id}"].File
	.Request()
	.GetAsync();

```