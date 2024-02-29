---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewPendingExternalUserProfile()
jobTitle := "Contractor"
requestBody.SetJobTitle(&jobTitle) 

pendingExternalUserProfiles, err := graphClient.Directory().PendingExternalUserProfiles().ByPendingExternalUserProfileId("pendingExternalUserProfile-id").Patch(context.Background(), requestBody, nil)


```