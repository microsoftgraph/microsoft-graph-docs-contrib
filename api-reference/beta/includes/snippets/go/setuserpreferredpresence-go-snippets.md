---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Users/Item/Presence/SetUserPreferredPresence"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewSetUserPreferredPresencePostRequestBody()
availability := "DoNotDisturb"
requestBody.SetAvailability(&availability) 
activity := "DoNotDisturb"
requestBody.SetActivity(&activity) 
expirationDuration , err := abstractions.ParseISODuration("PT8H")
requestBody.SetExpirationDuration(&expirationDuration) 

graphClient.Users().ByUserId("user-id").Presence().SetUserPreferredPresence().Post(context.Background(), requestBody, nil)


```