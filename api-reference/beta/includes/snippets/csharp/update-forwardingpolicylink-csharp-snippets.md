---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Networkaccess.ForwardingPolicyLink
{
	OdataType = "#microsoft.graph.networkaccess.forwardingPolicyLink",
	State = Microsoft.Graph.Beta.Models.Networkaccess.Status.Enabled,
};
var result = await graphClient.NetworkAccess.ForwardingProfiles["{forwardingProfile-id}"].Policies["{policyLink-id}"].PatchAsync(requestBody);


```