---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewTemporaryAccessPassAuthenticationMethod()
startDateTime , err := time.Parse(time.RFC3339, "2022-06-05T00:00:00.000Z")
requestBody.SetStartDateTime(&startDateTime) 
lifetimeInMinutes := int32(60)
requestBody.SetLifetimeInMinutes(&lifetimeInMinutes) 
isUsableOnce := false
requestBody.SetIsUsableOnce(&isUsableOnce) 

temporaryAccessPassMethods, err := graphClient.Users().ByUserId("user-id").Authentication().TemporaryAccessPassMethods().Post(context.Background(), requestBody, nil)


```