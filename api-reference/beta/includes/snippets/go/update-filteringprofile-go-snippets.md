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


requestBody := graphmodelsnetworkaccess.NewFilteringProfile()
state := graphmodels.DISABLED_STATUS 
requestBody.SetState(&state) 

filteringProfiles, err := graphClient.NetworkAccess().FilteringProfiles().ByFilteringProfileId("filteringProfile-id").Patch(context.Background(), requestBody, nil)


```