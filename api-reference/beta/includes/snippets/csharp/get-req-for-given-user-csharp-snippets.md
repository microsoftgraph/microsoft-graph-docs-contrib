---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.IdentityGovernance.EntitlementManagement.AccessPackages.Item.GetApplicablePolicyRequirements.GetApplicablePolicyRequirementsPostRequestBody
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"subject" , new 
			{
				ObjectId = "5acd375c-8acb-45de-a958-fa0dd89259ad",
			}
		},
	},
};
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackages["{accessPackage-id}"].GetApplicablePolicyRequirements.PostAsync(requestBody);


```