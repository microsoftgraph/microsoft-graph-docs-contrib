---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.VirtualEndpoint.CloudPCs.GetProvisionedCloudPCsWithGroupIdWithServicePlanId("{groupId}","{servicePlanId}").GetAsGetProvisionedCloudPCsWithGroupIdWithServicePlanIdGetResponseAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Select = new string []{ "id","displayName","powerState","connectivityResult","lastLoginResult","lastRemoteActionResult","osVersion","provisioningPolicyName","userAccountType" };
});


```