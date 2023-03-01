---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.ProvisioningPolicies.Item.Assign.AssignPostRequestBody
{
	Assignments = new List<CloudPcProvisioningPolicyAssignment>
	{
		new CloudPcProvisioningPolicyAssignment
		{
			Id = "b0c2d35f-3385-46c8-a6f5-6c3dfad7708b_64ff06de-9c00-4a5a-98b5-7f5abe26ffff",
			Target = new CloudPcManagementAssignmentTarget
			{
				OdataType = "microsoft.graph.cloudPcManagementGroupAssignmentTarget",
				AdditionalData = new Dictionary<string, object>
				{
					{
						"groupId" , "64ff06de-9c00-4a5a-98b5-7f5abe26ffff"
					},
				},
			},
		},
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"@odata.type" , "#microsoft.graph.cloudPcProvisioningPolicyAssignment"
		},
	},
};
await graphClient.DeviceManagement.VirtualEndpoint.ProvisioningPolicies["{cloudPcProvisioningPolicy-id}"].Assign.PostAsync(requestBody);


```