---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AccessPackageAssignmentPolicy
{
	Id = "5540a08f-8ab5-43f6-a923-015275799197",
	DisplayName = "policy with access package custom workflow extension",
	Description = "Run specified access package custom workflow extension at different stages.",
	AccessPackageId = "ba5807c7-2aa9-4c8a-907e-4a17ee587500",
	RequestApprovalSettings = null,
	RequestorSettings = new RequestorSettings
	{
		AcceptRequests = true,
		ScopeType = "AllExistingDirectorySubjects",
		AllowedRequestors = new List<UserSet>
		{
		},
	},
	AccessReviewSettings = null,
	CustomExtensionHandlers = new List<CustomExtensionHandler>
	{
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"expiration" , new 
			{
				Type = "afterDuration",
				Duration = "P365D",
			}
		},
	},
};
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageAssignmentPolicies["{accessPackageAssignmentPolicy-id}"].PutAsync(requestBody);


```