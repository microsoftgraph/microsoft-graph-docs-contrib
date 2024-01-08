---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Users.Item.Security.InformationProtection.SensitivityLabels.MicrosoftGraphSecurityExtractContentLabel;
using Microsoft.Graph.Beta.Models.Security;

var requestBody = new ExtractContentLabelPostRequestBody
{
	ContentInfo = new ContentInfo
	{
		Identifier = "MyDoc.docx",
		State = ContentState.Rest,
		Metadata = new List<KeyValuePair>
		{
			new KeyValuePair
			{
				Name = "MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_Enabled",
				Value = "True",
			},
			new KeyValuePair
			{
				Name = "MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_Method",
				Value = "Standard",
			},
			new KeyValuePair
			{
				Name = "MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_SetDate",
				Value = "1/1/0001 12:00:00 AM",
			},
			new KeyValuePair
			{
				Name = "MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_SiteId",
				Value = "cfa4cf1d-a337-4481-aa99-19d8f3d63f7c",
			},
			new KeyValuePair
			{
				Name = "MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_Name",
				Value = "LabelScopedToBob_Tests",
			},
			new KeyValuePair
			{
				Name = "MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_ContentBits",
				Value = "0",
			},
			new KeyValuePair
			{
				Name = "MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_ActionId",
				Value = "00000000-0000-0000-0000-000000000000",
			},
		},
		AdditionalData = new Dictionary<string, object>
		{
			{
				"format" , "default"
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Users["{user-id}"].Security.InformationProtection.SensitivityLabels.MicrosoftGraphSecurityExtractContentLabel.PostAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("User-Agent", "ContosoLOBApp/1.0");
});


```