---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Users.Item.Security.InformationProtection.SensitivityLabels.MicrosoftGraphSecurityEvaluateRemoval;
using Microsoft.Graph.Beta.Models.Security;

var requestBody = new EvaluateRemovalPostRequestBody
{
	ContentInfo = new ContentInfo
	{
		OdataType = "#microsoft.graph.security.contentInfo",
		Identifier = null,
		State = ContentState.Rest,
		Metadata = new List<KeyValuePair>
		{
			new KeyValuePair
			{
				Name = "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_Enabled",
				Value = "True",
			},
			new KeyValuePair
			{
				Name = "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_Method",
				Value = "Standard",
			},
			new KeyValuePair
			{
				Name = "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_SetDate",
				Value = "1/1/0001 12:00:00 AM",
			},
			new KeyValuePair
			{
				OdataType = "#microsoft.graph.security.keyValuePair",
				Name = "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_SiteId",
				Value = "cfa4cf1d-a337-4481-aa99-19d8f3d63f7c",
			},
			new KeyValuePair
			{
				OdataType = "#microsoft.graph.security.keyValuePair",
				Name = "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_Name",
				Value = "LabelScopedToBob_Tests",
			},
			new KeyValuePair
			{
				OdataType = "#microsoft.graph.security.keyValuePair",
				Name = "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_ContentBits",
				Value = "0",
			},
			new KeyValuePair
			{
				OdataType = "#microsoft.graph.security.keyValuePair",
				Name = "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_ActionId",
				Value = "00000000-0000-0000-0000-000000000000",
			},
		},
	},
	DowngradeJustification = new DowngradeJustification
	{
		JustificationMessage = "The information has been declassified.",
		IsDowngradeJustified = true,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Users["{user-id}"].Security.InformationProtection.SensitivityLabels.MicrosoftGraphSecurityEvaluateRemoval.PostAsEvaluateRemovalPostResponseAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("User-Agent", "ContosoLOBApp/1.0");
});


```