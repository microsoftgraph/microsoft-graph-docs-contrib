---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.IndustryData.InboundFlow
{
	OdataType = "#microsoft.graph.industryData.inboundFileFlow",
	DataDomain = Microsoft.Graph.Beta.Models.IndustryData.InboundDomain.EducationRostering,
	DisplayName = "Inbound rostering flow",
	EffectiveDateTime = DateTimeOffset.Parse("2023-03-12T16:40:46.924769+05:30"),
	ExpirationDateTime = DateTimeOffset.Parse("2023-03-13T16:40:46.924769+05:30"),
	AdditionalData = new Dictionary<string, object>
	{
		{
			"dataConnector@odata.bind" , "https://graph.microsoft.com/beta/external/industryData/dataConnectors/51dca0a0-85f6-4478-f526-08daddab2271"
		},
		{
			"year@odata.bind" , "https://graph.microsoft.com/beta/external/industryData/years/ebf18762-ab92-487e-21d1-08daddab28bb"
		},
	},
};
var result = await graphClient.External.IndustryData.InboundFlows.PostAsync(requestBody);


```