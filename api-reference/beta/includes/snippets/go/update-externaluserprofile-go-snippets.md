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


requestBody := graphmodels.NewExternalUserProfile()
jobTitle := "Contractor"
requestBody.SetJobTitle(&jobTitle) 

externalUserProfiles, err := graphClient.Directory().ExternalUserProfiles().ByExternalUserProfileId("externalUserProfile-id").Patch(context.Background(), requestBody, nil)


```