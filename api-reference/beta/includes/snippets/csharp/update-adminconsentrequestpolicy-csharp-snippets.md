---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Policies.AdminConsentRequestPolicy.AdminConsentRequestPolicyPutRequestBody
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"isEnabled" , true
		},
		{
			"notifyReviewers" , true
		},
		{
			"remindersEnabled" , true
		},
		{
			"requestDurationInDays" , 5
		},
		{
			"reviewers" , new List<>
			{
				new 
				{
					Query = "/users/b6879be8-fb87-4482-a72e-18445d2b5c54",
					QueryType = "MicrosoftGraph",
				},
				new 
				{
					Query = "/users/b3427cc5-bf69-4dcd-95f7-ed1eb432f5e9",
					QueryType = "MicrosoftGraph",
				},
			}
		},
	},
};
await graphClient.Policies.AdminConsentRequestPolicy.PutAsync(requestBody);


```