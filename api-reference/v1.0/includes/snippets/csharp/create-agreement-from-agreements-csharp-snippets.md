---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var agreement = new Agreement
{
	DisplayName = "Contoso ToU for guest users",
	IsViewingBeforeAcceptanceRequired = true,
	Files = new AgreementFilesCollectionPage()
	{
		new AgreementFileLocalization
		{
			FileName = "TOU.pdf",
			Language = "en",
			IsDefault = true,
			FileData = new AgreementFileData
			{
				Data = Convert.FromBase64String("SGVsbG8gd29ybGQ=//truncated-binary")
			}
		}
	}
};

await graphClient.IdentityGovernance.TermsOfUse.Agreements
	.Request()
	.AddAsync(agreement);

```