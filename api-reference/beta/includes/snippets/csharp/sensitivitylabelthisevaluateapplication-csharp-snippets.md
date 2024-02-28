---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Users.Item.Security.InformationProtection.SensitivityLabels.MicrosoftGraphSecurityEvaluateApplication;
using Microsoft.Graph.Beta.Models.Security;

var requestBody = new EvaluateApplicationPostRequestBody
{
	ContentInfo = new ContentInfo
	{
		OdataType = "#microsoft.graph.security.contentInfo",
		ContentFormat = "File",
		Identifier = null,
		State = ContentState.Rest,
		Metadata = new List<KeyValuePair>
		{
			new KeyValuePair
			{
				OdataType = "#microsoft.graph.security.keyValuePair",
				Name = "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_Enabled",
				Value = "True",
			},
			new KeyValuePair
			{
				OdataType = "#microsoft.graph.security.keyValuePair",
				Name = "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_Method",
				Value = "Standard",
			},
			new KeyValuePair
			{
				OdataType = "#microsoft.graph.security.keyValuePair",
				Name = "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_SetDate",
				Value = "1/1/0001 12:00:00 AM",
			},
			new KeyValuePair
			{
				OdataType = "#microsoft.graph.security.keyValuePair",
				Name = "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_SiteId",
				Value = "cfa4cf1d-a337-4481-aa99-19d8f3d63f7c",
			},
			new KeyValuePair
			{
				OdataType = "#microsoft.graph.security.keyValuePair",
				Name = "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_Name",
				Value = "LabelScopedToBob_Tests",
			},
			new KeyValuePair
			{
				OdataType = "#microsoft.graph.security.keyValuePair",
				Name = "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_ContentBits",
				Value = "0",
			},
			new KeyValuePair
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
	LabelingOptions = new LabelingOptions
	{
		OdataType = "#microsoft.graph.security.labelingOptions",
		AssignmentMethod = AssignmentMethod.Standard,
		LabelId = "836ff34f-b604-4a62-a68c-d6be4205d569",
		DowngradeJustification = new DowngradeJustification
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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Users["{user-id}"].Security.InformationProtection.SensitivityLabels.MicrosoftGraphSecurityEvaluateApplication.PostAsEvaluateApplicationPostResponseAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("User-Agent", "ContosoLobApp/1.0");
});


```