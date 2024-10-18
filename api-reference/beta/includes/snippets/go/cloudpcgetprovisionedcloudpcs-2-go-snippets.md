---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-beta-sdk-go/devicemanagement"
	  //other-imports
)

requestParameters := &graphdevicemanagement.DeviceManagementVirtualEndpointCloudPCsGetProvisionedCloudPCsWithGroupIdWithServicePlanIdRequestBuilderGetQueryParameters{
	Select: [] string {"id","displayName","powerState","connectivityResult","lastLoginResult","lastRemoteActionResult","osVersion","provisioningPolicyName","userAccountType"},
}
configuration := &graphdevicemanagement.DeviceManagementVirtualEndpointCloudPCsGetProvisionedCloudPCsWithGroupIdWithServicePlanIdRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
groupId := "{groupId}"
servicePlanId := "{servicePlanId}"
getProvisionedCloudPCs, err := graphClient.DeviceManagement().VirtualEndpoint().CloudPCs().GetProvisionedCloudPCsWithGroupIdWithServicePlanId(&groupId, &servicePlanId).GetAsGetProvisionedCloudPCsWithGroupIdWithServicePlanIdGetResponse(context.Background(), configuration)


```