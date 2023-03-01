---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AgreementFileLocalization
{
	FileName = "Contoso ToU for guest users (French)",
	Language = "fr-FR",
	IsDefault = false,
	IsMajorVersion = false,
	DisplayName = "Contoso ToU for guest users (French)",
	FileData = new AgreementFileData
	{
		Data = Convert.FromBase64String("base64JVBERi0xLjUKJb/3ov4KNCAwIG9iago8PCAvTGluZWFyaX//truncated-binary-data"),
	},
};
var result = await graphClient.IdentityGovernance.TermsOfUse.Agreements["{agreement-id}"].Files.PostAsync(requestBody);


```