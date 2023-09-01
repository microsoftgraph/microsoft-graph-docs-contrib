---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Agreement
{
	DisplayName = "Contoso ToU for guest users",
	IsViewingBeforeAcceptanceRequired = true,
	Files = new List<AgreementFileLocalization>
	{
		new AgreementFileLocalization
		{
			FileName = "TOU.pdf",
			Language = "en",
			IsDefault = true,
			FileData = new AgreementFileData
			{
				Data = Convert.FromBase64String("SGVsbG8gd29ybGQ=//truncated-binary"),
			},
		},
	},
};
var result = await graphClient.IdentityGovernance.TermsOfUse.Agreements.PostAsync(requestBody);


```