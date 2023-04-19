---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Directory/AdministrativeUnits/Item/Members"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewMembersPostRequestBody()
additionalData := map[string]interface{}{
	"description" : "Self help community for golf", 
	"displayName" : "Golf Assist", 
	groupTypes := []string {
		"Unified",

	}
	mailEnabled := true
requestBody.SetMailEnabled(&mailEnabled) 
	"mailNickname" : "golfassist", 
	securityEnabled := false
requestBody.SetSecurityEnabled(&securityEnabled) 
}
requestBody.SetAdditionalData(additionalData)

graphClient.Directory().AdministrativeUnits().ByAdministrativeUnitId("administrativeUnit-id").Members().Post(context.Background(), requestBody, nil)


```