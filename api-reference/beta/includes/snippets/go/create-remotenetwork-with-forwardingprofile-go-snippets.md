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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
remoteNetworks, err := graphClient.NetworkAccess().Connectivity().RemoteNetworks().Post(context.Background(), requestBody, nil)


```