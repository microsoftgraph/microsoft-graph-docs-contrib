---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new CloudPcProvisioningPolicyAssignment
{
	OdataType = "#microsoft.graph.cloudPcProvisioningPolicyAssignment",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"assignments" , new List<object>
			{
				new 
				{
					Id = "b0c2d35f-3385-46c8-a6f5-6c3dfad7708b_64ff06de-9c00-4a5a-98b5-7f5abe26ffff",
					Target = new 
					{
						OdataType = "microsoft.graph.cloudPcManagementGroupAssignmentTarget",
						GroupId = "64ff06de-9c00-4a5a-98b5-7f5abe26ffff",
					},
				},
			}
		},
	},
};
await graphClient.DeviceManagement.VirtualEndpoint.ProvisioningPolicies["{cloudPcProvisioningPolicy-id}"].Assign.PostAsync(requestBody);


```