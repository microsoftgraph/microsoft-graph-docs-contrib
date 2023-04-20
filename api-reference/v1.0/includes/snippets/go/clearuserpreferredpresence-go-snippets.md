---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Users/Item/Presence/ClearUserPreferredPresence"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewClearUserPreferredPresencePostRequestBody()

graphClient.UsersById("user-id").Presence().ClearUserPreferredPresence().Post(context.Background(), requestBody, nil)


```