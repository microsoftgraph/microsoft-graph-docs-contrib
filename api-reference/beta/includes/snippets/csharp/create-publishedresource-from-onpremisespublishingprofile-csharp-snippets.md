---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PublishedResource
{
	DisplayName = "New provisioning",
	ResourceName = "domain1.contoso.com",
};
var result = await graphClient.OnPremisesPublishingProfiles["{onPremisesPublishingProfile-id}"].PublishedResources.PostAsync(requestBody);


```