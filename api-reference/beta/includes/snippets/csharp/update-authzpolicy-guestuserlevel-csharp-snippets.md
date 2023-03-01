---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AuthorizationPolicy
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"guestUserRole" , "2af84b1e-32c8-42b7-82bc-daa82404023b"
		},
	},
};
var result = await graphClient.Policies.AuthorizationPolicy["{authorizationPolicy-id}"].PatchAsync(requestBody);


```