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


requestCustomFilter := "contains(tolower(managedDeviceName), 'a') or contains(tolower(imageDisplayName), 'a') or contains(tolower(userPrincipalName), 'a')"

requestParameters := &graphdevicemanagement.VirtualEndpointCloudPCsRetrieveCloudPcCountByStatusRequestBuilderGetQueryParameters{
	CustomFilter: &requestCustomFilter,
}
configuration := &graphdevicemanagement.VirtualEndpointCloudPCsRetrieveCloudPcCountByStatusRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
retrieveCloudPcCountByStatus, err := graphClient.DeviceManagement().VirtualEndpoint().CloudPCs().RetrieveCloudPcCountByStatus().GetAsRetrieveCloudPcCountByStatusGetResponse(context.Background(), configuration)


```