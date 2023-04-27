---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.InformationProtection.Policy.Labels.EvaluateApplication.EvaluateApplicationPostRequestBody
{
	ContentInfo = new ContentInfo
	{
		OdataType = "#microsoft.graph.contentInfo",
		Format = ContentFormat.Default,
		Identifier = null,
		State = ContentState.Rest,
		Metadata = new List<KeyValuePair>
		{
			new KeyValuePair
			{
				OdataType = "#microsoft.graph.keyValuePair",
				Name = "MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_Enabled",
				Value = "True",
			},
			new KeyValuePair
			{
				OdataType = "#microsoft.graph.keyValuePair",
				Name = "MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_Method",
				Value = "Standard",
			},
			new KeyValuePair
			{
				OdataType = "#microsoft.graph.keyValuePair",
				Name = "MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_SetDate",
				Value = "1/1/0001 12:00:00 AM",
			},
			new KeyValuePair
			{
				OdataType = "#microsoft.graph.keyValuePair",
				Name = "MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_SiteId",
				Value = "cfa4cf1d-a337-4481-aa99-19d8f3d63f7c",
			},
			new KeyValuePair
			{
				OdataType = "#microsoft.graph.keyValuePair",
				Name = "MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_Name",
				Value = "General",
			},
			new KeyValuePair
			{
				OdataType = "#microsoft.graph.keyValuePair",
				Name = "MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_ContentBits",
				Value = "0",
			},
			new KeyValuePair
			{
				OdataType = "#microsoft.graph.keyValuePair",
				Name = "MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_ActionId",
				Value = "00000000-0000-0000-0000-000000000000",
			},
		},
		AdditionalData = new Dictionary<string, object>
		{
			{
				"format@odata.type" , "#microsoft.graph.contentFormat"
			},
			{
				"state@odata.type" , "#microsoft.graph.contentState"
			},
			{
				"metadata@odata.type" , "#Collection(microsoft.graph.keyValuePair)"
			},
		},
	},
	LabelingOptions = new LabelingOptions
	{
		OdataType = "#microsoft.graph.labelingOptions",
		AssignmentMethod = AssignmentMethod.Standard,
		LabelId = "97309856-9c28-4ac6-9382-5f8bc20c457b",
		DowngradeJustification = null,
		ExtendedProperties = new List<KeyValuePair>
		{
		},
		AdditionalData = new Dictionary<string, object>
		{
			{
				"assignmentMethod@odata.type" , "#microsoft.graph.assignmentMethod"
			},
			{
				"labelId@odata.type" , "#Guid"
			},
			{
				"extendedProperties@odata.type" , "#Collection(microsoft.graph.keyValuePair)"
			},
		},
	},
};
var result = await graphClient.InformationProtection.Policy.Labels.EvaluateApplication.PostAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("User-Agent", "ContosoLOBApp/1.0");
});


```