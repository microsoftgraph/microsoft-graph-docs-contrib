---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphusers.NewSetUserPreferredPresencePostRequestBody()
availability := "DoNotDisturb"
requestBody.SetAvailability(&availability) 
activity := "DoNotDisturb"
requestBody.SetActivity(&activity) 
expirationDuration , err := abstractions.ParseISODuration("PT8H")
requestBody.SetExpirationDuration(&expirationDuration) 

graphClient.Users().ByUserId("user-id").Presence().SetUserPreferredPresence().Post(context.Background(), requestBody, nil)


```