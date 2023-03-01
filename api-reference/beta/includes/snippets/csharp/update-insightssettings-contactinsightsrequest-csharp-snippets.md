---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new InsightsSettings
{
	IsEnabledInOrganization = true,
	DisabledForGroup = "edbfe4fb-ec70-4300-928f-dbb2ae86c981",
};
var result = await graphClient.Organization["{organization-id}"].Settings.ContactInsights.PatchAsync(requestBody);


```