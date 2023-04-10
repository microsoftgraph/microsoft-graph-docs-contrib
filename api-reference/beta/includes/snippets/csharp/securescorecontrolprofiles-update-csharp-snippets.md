---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new SecureScoreControlProfile
{
	ControlStateUpdates = "controlStateUpdates-value",
};
var result = await graphClient.Security.SecureScoreControlProfiles["{secureScoreControlProfile-id}"].PatchAsync(requestBody);


```