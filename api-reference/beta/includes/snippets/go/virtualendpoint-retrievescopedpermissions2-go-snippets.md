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


requestFilter := "permission in ('Microsoft.CloudPC/ProvisioningPolicies/Update','Microsoft.CloudPC/ProvisioningPolicies/Create')"

requestParameters := &graphdevicemanagement.VirtualEndpointRetrieveScopedPermissionsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphdevicemanagement.VirtualEndpointRetrieveScopedPermissionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
retrieveScopedPermissions, err := graphClient.DeviceManagement().VirtualEndpoint().RetrieveScopedPermissions().GetAsRetrieveScopedPermissionsGetResponse(context.Background(), configuration)


```