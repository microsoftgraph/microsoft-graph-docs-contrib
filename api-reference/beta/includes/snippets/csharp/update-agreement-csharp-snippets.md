---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Agreement
{
	DisplayName = "All Contoso volunteers - Terms of use",
	IsViewingBeforeAcceptanceRequired = true,
};
var result = await graphClient.IdentityGovernance.TermsOfUse.Agreements["{agreement-id}"].PatchAsync(requestBody);


```