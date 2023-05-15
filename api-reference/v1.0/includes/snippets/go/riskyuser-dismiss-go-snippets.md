---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/IdentityProtection/RiskyUsers/Dismiss"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewDismissPostRequestBody()
userIds := []string {
	"04487ee0-f4f6-4e7f-8999-facc5a30e232",
	"13387ee0-f4f6-4e7f-8999-facc5120e345",

}
requestBody.SetUserIds(userIds)

graphClient.IdentityProtection().RiskyUsers().Dismiss().Post(context.Background(), requestBody, nil)


```