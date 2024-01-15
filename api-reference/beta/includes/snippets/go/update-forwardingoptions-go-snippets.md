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


requestBody := graphmodelsnetworkaccess.NewForwardingOptions()
skipDnsLookupState := graphmodels.DISABLED_STATUS 
requestBody.SetSkipDnsLookupState(&skipDnsLookupState) 

forwardingOptions, err := graphClient.NetworkAccess().Settings().ForwardingOptions().Patch(context.Background(), requestBody, nil)


```