---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Agreement
{
	DisplayName = "All Contoso volunteers - Terms of use",
	IsViewingBeforeAcceptanceRequired = true,
};
var result = await graphClient.IdentityGovernance.TermsOfUse.Agreements["{agreement-id}"].PatchAsync(requestBody);


```