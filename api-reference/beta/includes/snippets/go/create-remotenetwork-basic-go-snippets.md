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


requestBody := graphmodelsnetworkaccess.NewRemoteNetwork()
name := "Bellevue branch"
requestBody.SetName(&name) 
region := graphmodels.CANADAEAST_REGION 
requestBody.SetRegion(&region) 

remoteNetworks, err := graphClient.NetworkAccess().Connectivity().RemoteNetworks().Post(context.Background(), requestBody, nil)


```