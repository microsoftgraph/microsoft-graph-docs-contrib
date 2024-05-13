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
name := "Bellevue branch w/ fwd profile"
requestBody.SetName(&name) 
region := graphmodels.CANADAEAST_REGION 
requestBody.SetRegion(&region) 


forwardingProfile := graphmodelsnetworkaccess.NewForwardingProfile()
id := "1adaf535-1e31-4e14-983f-2270408162bf"
forwardingProfile.SetId(&id) 

forwardingProfiles := []graphmodelsnetworkaccess.ForwardingProfileable {
	forwardingProfile,
}
requestBody.SetForwardingProfiles(forwardingProfiles)

remoteNetworks, err := graphClient.NetworkAccess().Connectivity().RemoteNetworks().Post(context.Background(), requestBody, nil)


```