---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-beta-sdk-go/devicemanagement"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "permission in ('Microsoft.CloudPC/ProvisioningPolicies/Update','Microsoft.CloudPC/ProvisioningPolicies/Create')"

requestParameters := &graphdevicemanagement.DeviceManagementVirtualEndpointRetrieveScopedPermissions()RequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphdevicemanagement.DeviceManagementVirtualEndpointRetrieveScopedPermissions()RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

retrieveScopedPermissions, err := graphClient.DeviceManagement().VirtualEndpoint().RetrieveScopedPermissions().GetAsRetrieveScopedPermissionsGetResponse(context.Background(), configuration)


```