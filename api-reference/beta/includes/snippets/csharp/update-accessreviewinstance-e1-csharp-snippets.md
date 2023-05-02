---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AccessReviewInstance
{
	Scope = new AccessReviewScope
	{
		OdataType = "#microsoft.graph.principalResourceMembershipsScope",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"principalScopes" , new List<>
				{
					new 
					{
						OdataType = "#microsoft.graph.accessReviewQueryScope",
						Query = "/v1.0/users",
						QueryType = "MicrosoftGraph",
					},
					new 
					{
						OdataType = "#microsoft.graph.accessReviewQueryScope",
						Query = "/v1.0/groups",
						QueryType = "MicrosoftGraph",
					},
				}
			},
			{
				"resourceScopes" , new List<>
				{
					new 
					{
						OdataType = "#microsoft.graph.accessReviewQueryScope",
						Query = "/beta/roleManagement/directory/roleDefinitions/9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3",
						QueryType = "MicrosoftGraph",
					},
				}
			},
		},
	},
	Reviewers = new List<AccessReviewReviewerScope>
	{
		new AccessReviewReviewerScope
		{
			Query = "/users/1ed8ac56-4827-4733-8f80-86adc2e67db5",
			QueryType = "MicrosoftGraph",
		},
	},
	FallbackReviewers = new List<AccessReviewReviewerScope>
	{
		new AccessReviewReviewerScope
		{
			Query = "/users/4562bcc8-c436-4f95-b7c0-4f8ce89dca5e",
			QueryType = "MicrosoftGraph",
		},
		new AccessReviewReviewerScope
		{
			Query = "/users/1ed8ac56-4827-4733-8f80-86adc2e67db5",
			QueryType = "MicrosoftGraph",
		},
	},
};
var result = await graphClient.IdentityGovernance.AccessReviews.Definitions["{accessReviewScheduleDefinition-id}"].Instances["{accessReviewInstance-id}"].PatchAsync(requestBody);


```