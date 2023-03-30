---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Users.Item.Security.InformationProtection.SensitivityLabels.SecurityExtractContentLabel.ExtractContentLabelPostRequestBody
{
	ContentInfo = new Microsoft.Graph.Beta.Models.Security.ContentInfo
	{
		Identifier = "MyDoc.docx",
		State = Microsoft.Graph.Beta.Models.Security.ContentState.Rest,
		Metadata = new List<Microsoft.Graph.Beta.Models.Security.KeyValuePair>
		{
			new Microsoft.Graph.Beta.Models.Security.KeyValuePair
			{
				Name = "MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_Enabled",
				Value = "True",
			},
			new Microsoft.Graph.Beta.Models.Security.KeyValuePair
			{
				Name = "MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_Method",
				Value = "Standard",
			},
			new Microsoft.Graph.Beta.Models.Security.KeyValuePair
			{
				Name = "MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_SetDate",
				Value = "1/1/0001 12:00:00 AM",
			},
			new Microsoft.Graph.Beta.Models.Security.KeyValuePair
			{
				Name = "MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_SiteId",
				Value = "cfa4cf1d-a337-4481-aa99-19d8f3d63f7c",
			},
			new Microsoft.Graph.Beta.Models.Security.KeyValuePair
			{
				Name = "MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_Name",
				Value = "LabelScopedToBob_Tests",
			},
			new Microsoft.Graph.Beta.Models.Security.KeyValuePair
			{
				Name = "MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_ContentBits",
				Value = "0",
			},
			new Microsoft.Graph.Beta.Models.Security.KeyValuePair
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
var result = await graphClient.Users["{user-id}"].Security.InformationProtection.SensitivityLabels.SecurityExtractContentLabel.PostAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("User-Agent", "ContosoLOBApp/1.0");
});


```