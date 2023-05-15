---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PronounsSettings
{
	IsEnabledInOrganization = true,
};
var result = await graphClient.Organization["{organization-id}"].Settings.Pronouns.PatchAsync(requestBody);


```