---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsnetworkaccess "github.com/microsoftgraph/msgraph-beta-sdk-go/models/networkaccess"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelsnetworkaccess.NewCrossTenantAccessSettings()
networkPacketTaggingStatus := graphmodels.ENABLED_STATUS 
requestBody.SetNetworkPacketTaggingStatus(&networkPacketTaggingStatus) 

crossTenantAccess, err := graphClient.NetworkAccess().Settings().CrossTenantAccess().Patch(context.Background(), requestBody, nil)


```