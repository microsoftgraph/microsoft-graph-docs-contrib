---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Users.Item.Security.InformationProtection.SensitivityLabels.SecurityEvaluateApplication.EvaluateApplicationPostRequestBody
{
	ContentInfo = new Microsoft.Graph.Beta.Models.Security.ContentInfo
	{
		OdataType = "#microsoft.graph.security.contentInfo",
		ContentFormat = "File",
		Identifier = null,
		State = Microsoft.Graph.Beta.Models.Security.ContentState.Rest,
		Metadata = new List<Microsoft.Graph.Beta.Models.Security.KeyValuePair>
		{
			new Microsoft.Graph.Beta.Models.Security.KeyValuePair
			{
				OdataType = "#microsoft.graph.security.keyValuePair",
				Name = "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_Enabled",
				Value = "True",
			},
			new Microsoft.Graph.Beta.Models.Security.KeyValuePair
			{
				OdataType = "#microsoft.graph.security.keyValuePair",
				Name = "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_Method",
				Value = "Standard",
			},
			new Microsoft.Graph.Beta.Models.Security.KeyValuePair
			{
				OdataType = "#microsoft.graph.security.keyValuePair",
				Name = "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_SetDate",
				Value = "1/1/0001 12:00:00 AM",
			},
			new Microsoft.Graph.Beta.Models.Security.KeyValuePair
			{
				OdataType = "#microsoft.graph.security.keyValuePair",
				Name = "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_SiteId",
				Value = "cfa4cf1d-a337-4481-aa99-19d8f3d63f7c",
			},
			new Microsoft.Graph.Beta.Models.Security.KeyValuePair
			{
				OdataType = "#microsoft.graph.security.keyValuePair",
				Name = "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_Name",
				Value = "LabelScopedToBob_Tests",
			},
			new Microsoft.Graph.Beta.Models.Security.KeyValuePair
			{
				OdataType = "#microsoft.graph.security.keyValuePair",
				Name = "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_ContentBits",
				Value = "0",
			},
			new Microsoft.Graph.Beta.Models.Security.KeyValuePair
			{
				OdataType = "#microsoft.graph.security.keyValuePair",
				Name = "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_ActionId",
				Value = "00000000-0000-0000-0000-000000000000",
			},
		},
		AdditionalData = new Dictionary<string, object>
		{
			{
				"format@odata.type" , "#microsoft.graph.security.contentFormat"
			},
			{
				"format" , "default"
			},
			{
				"state@odata.type" , "#microsoft.graph.security.contentState"
			},
			{
				"metadata@odata.type" , "#Collection(microsoft.graph.security.keyValuePair)"
			},
		},
	},
	LabelingOptions = new Microsoft.Graph.Beta.Models.Security.LabelingOptions
	{
		OdataType = "#microsoft.graph.security.labelingOptions",
		AssignmentMethod = Microsoft.Graph.Beta.Models.Security.AssignmentMethod.Standard,
		LabelId = "836ff34f-b604-4a62-a68c-d6be4205d569",
		DowngradeJustification = new Microsoft.Graph.Beta.Models.Security.DowngradeJustification
		{
			JustificationMessage = "Justified",
			IsDowngradeJustified = true,
		},
		ExtendedProperties = new List<KeyValuePair>
		{
		},
		AdditionalData = new Dictionary<string, object>
		{
			{
				"assignmentMethod@odata.type" , "#microsoft.graph.security.assignmentMethod"
			},
			{
				"labelId@odata.type" , "#Guid"
			},
			{
				"extendedProperties@odata.type" , "#Collection(microsoft.graph.security.keyValuePair)"
			},
		},
	},
};
var result = await graphClient.Users["{user-id}"].Security.InformationProtection.SensitivityLabels.SecurityEvaluateApplication.PostAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("User-Agent", "ContosoLobApp/1.0");
});


```