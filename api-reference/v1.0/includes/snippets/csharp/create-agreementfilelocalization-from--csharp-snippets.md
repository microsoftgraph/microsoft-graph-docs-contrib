---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.TermsOfUse.Agreements["{agreement-id}"].Files.PostAsync(requestBody);


```