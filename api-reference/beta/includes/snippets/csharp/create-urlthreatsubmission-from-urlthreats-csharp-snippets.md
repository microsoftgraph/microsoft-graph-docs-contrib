---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Security.UrlThreatSubmission
{
	OdataType = "#microsoft.graph.urlThreatSubmission",
	Category = Microsoft.Graph.Beta.Models.Security.SubmissionCategory.Phishing,
	WebUrl = "http://phishing.contoso.com",
};
var result = await graphClient.Security.ThreatSubmission.UrlThreats.PostAsync(requestBody);


```