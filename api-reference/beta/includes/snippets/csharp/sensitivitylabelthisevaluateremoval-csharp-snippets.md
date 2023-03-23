---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Users.Item.Security.InformationProtection.SensitivityLabels.SecurityEvaluateRemoval.EvaluateRemovalPostRequestBody
{
	ContentInfo = new Microsoft.Graph.Beta.Models.Security.ContentInfo
	{
		OdataType = "#microsoft.graph.security.contentInfo",
		Identifier = null,
		State = Microsoft.Graph.Beta.Models.Security.ContentState.Rest,
		Metadata = new List<Microsoft.Graph.Beta.Models.Security.KeyValuePair>
		{
			new Microsoft.Graph.Beta.Models.Security.KeyValuePair
			{
				Name = "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_Enabled",
				Value = "True",
			},
			new Microsoft.Graph.Beta.Models.Security.KeyValuePair
			{
				Name = "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_Method",
				Value = "Standard",
			},
			new Microsoft.Graph.Beta.Models.Security.KeyValuePair
			{
				Name = "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_SetDate",
				Value = "1/1/0001 12:00:00 AM",
			},
			new Microsoft.Graph.Beta.Models.Security.KeyValuePair
			{
				OdataType = "#microsoft.graph.security.keyValuePair",
				Name = "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_SiteId",
				Value = "cfa4cf1d-a337-4481-aa99-19d8f3d63f7c",
			},
			new Microsoft.Graph.Beta.Models.Security.KeyValuePair
			{
				OdataType = "#microsoft.graph.security.keyValuePair",
				Name = "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_Name",
				Value = "LabelScopedToBob_Tests",
			},
			new Microsoft.Graph.Beta.Models.Security.KeyValuePair
			{
				OdataType = "#microsoft.graph.security.keyValuePair",
				Name = "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_ContentBits",
				Value = "0",
			},
			new Microsoft.Graph.Beta.Models.Security.KeyValuePair
			{
				OdataType = "#microsoft.graph.security.keyValuePair",
				Name = "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_ActionId",
				Value = "00000000-0000-0000-0000-000000000000",
			},
		},
	},
	DowngradeJustification = new Microsoft.Graph.Beta.Models.Security.DowngradeJustification
	{
		JustificationMessage = "The information has been declassified.",
		IsDowngradeJustified = true,
	},
};
var result = await graphClient.Users["{user-id}"].Security.InformationProtection.SensitivityLabels.SecurityEvaluateRemoval.PostAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("User-Agent", "ContosoLOBApp/1.0");
});


```