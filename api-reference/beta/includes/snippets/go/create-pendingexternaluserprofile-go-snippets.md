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
phoneNumber := "+15555555555"
requestBody.SetPhoneNumber(&phoneNumber) 
displayName := "Bob Henry"
requestBody.SetDisplayName(&displayName) 

pendingExternalUserProfiles, err := graphClient.Directory().PendingExternalUserProfiles().Post(context.Background(), requestBody, nil)


```