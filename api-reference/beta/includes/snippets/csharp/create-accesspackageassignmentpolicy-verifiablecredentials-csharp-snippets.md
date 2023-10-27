---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AccessPackageAssignmentPolicy
{
	DisplayName = "policy-with-verified-id",
	Description = "test",
	AccessPackageId = "ba5807c7-2aa9-4c8a-907e-4a17ee587500",
	CanExtend = false,
	RequestApprovalSettings = null,
	RequestorSettings = new RequestorSettings
	{
		AcceptRequests = true,
		ScopeType = "AllExistingDirectorySubjects",
		AllowedRequestors = new List<UserSet>
		{
		},
		AdditionalData = new Dictionary<string, object>
		{
			{
				"isOnBehalfAllowed" , false
			},
		},
	},
	AccessReviewSettings = null,
	Questions = new List<AccessPackageQuestion>
	{
	},
	CustomExtensionHandlers = new List<CustomExtensionHandler>
	{
	},
	VerifiableCredentialSettings = new VerifiableCredentialSettings
	{
		CredentialTypes = new List<VerifiableCredentialType>
		{
			new VerifiableCredentialType
			{
				Issuers = new List<string>
				{
					"did:ion:EiAlrenrtD3Lsw0GlbzS1O2YFdy3Xtu8yo35W<SNIP>...",
				},
				CredentialType = "VerifiedCredentialExpert",
			},
		},
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
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageAssignmentPolicies.PostAsync(requestBody);


```