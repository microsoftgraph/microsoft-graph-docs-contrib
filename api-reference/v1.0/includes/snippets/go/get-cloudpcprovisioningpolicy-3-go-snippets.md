---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-sdk-go/devicemanagement"
	  //other-imports
)

requestParameters := &graphdevicemanagement.VirtualEndpointProvisioningPoliciesItemRequestBuilderGetQueryParameters{
	Select: [] string {"id","description","displayName","domainJoinConfigurations","imageDisplayName","imageId","imageType","windowsSetting","cloudPcGroupDisplayName","gracePeriodInHours","localAdminEnabled","alternateResourceUrl"},
}
configuration := &graphdevicemanagement.VirtualEndpointProvisioningPoliciesItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
provisioningPolicies, err := graphClient.DeviceManagement().VirtualEndpoint().ProvisioningPolicies().ByCloudPcProvisioningPolicyId("cloudPcProvisioningPolicy-id").Get(context.Background(), configuration)


```