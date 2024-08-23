---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsnetworkaccess "github.com/microsoftgraph/msgraph-beta-sdk-go/models/networkaccess"
	  //other-imports
)

requestBody := graphmodelsnetworkaccess.NewCrossTenantAccessSettings()
networkPacketTaggingStatus := graphmodels.ENABLED_STATUS 
requestBody.SetNetworkPacketTaggingStatus(&networkPacketTaggingStatus) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
crossTenantAccess, err := graphClient.NetworkAccess().Settings().CrossTenantAccess().Patch(context.Background(), requestBody, nil)


```