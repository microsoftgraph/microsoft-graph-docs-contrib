---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Organization["{organization-id}"].Branding.GetAsync((requestConfiguration) =>
{
	requestConfiguration.Headers.Add("Accept-Language", "fr-FR");
});


```