---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var contentInfo = new Microsoft.Graph.Security.ContentInfo
{
	Identifier = null,
	State = Microsoft.Graph.Security.ContentState.Rest,
	Metadata = new List<Microsoft.Graph.Security.KeyValuePair>()
	{
		new Microsoft.Graph.Security.KeyValuePair
		{
			Name = "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_Enabled",
			Value = "True"
		},
		new Microsoft.Graph.Security.KeyValuePair
		{
			Name = "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_Method",
			Value = "Standard"
		},
		new Microsoft.Graph.Security.KeyValuePair
		{
			Name = "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_SetDate",
			Value = "1/1/0001 12:00:00 AM"
		},
		new Microsoft.Graph.Security.KeyValuePair
		{
			Name = "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_SiteId",
			Value = "cfa4cf1d-a337-4481-aa99-19d8f3d63f7c"
		},
		new Microsoft.Graph.Security.KeyValuePair
		{
			Name = "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_Name",
			Value = "LabelScopedToBob_Tests"
		},
		new Microsoft.Graph.Security.KeyValuePair
		{
			Name = "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_ContentBits",
			Value = "0"
		},
		new Microsoft.Graph.Security.KeyValuePair
		{
			Name = "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_ActionId",
			Value = "00000000-0000-0000-0000-000000000000"
		}
	}
};

var downgradeJustification = new Microsoft.Graph.Security.DowngradeJustification
{
	JustificationMessage = "The information has been declassified.",
	IsDowngradeJustified = true
};

await graphClient.Users["{user-id}"].Security.InformationProtection.SensitivityLabels
	.EvaluateRemoval(contentInfo,downgradeJustification)
	.Request()
	.Header("User-Agent","ContosoLOBApp/1.0")
	.PostAsync();

```