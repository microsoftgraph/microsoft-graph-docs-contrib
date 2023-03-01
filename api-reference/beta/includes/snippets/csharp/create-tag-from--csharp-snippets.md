---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Ediscovery.Tag
{
	DisplayName = "Privileged",
	Description = "The document is privileged",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"parent@odata.bind" , "https://graph.microsoft.com/beta/compliance/ediscovery/cases/47746044-fd0b-4a30-acfc-5272b691ba5b/tags/98fdad78bbce4519b75474bc150575c3"
		},
	},
};
var result = await graphClient.Compliance.Ediscovery.Cases["{case-id}"].Tags.PostAsync(requestBody);


```