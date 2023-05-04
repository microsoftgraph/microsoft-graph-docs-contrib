---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//ediscovery"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewLegalHold()
description := "String"
requestBody.SetDescription(&description) 
createdBy := graphmodels.NewIdentitySet()
requestBody.SetCreatedBy(createdBy)
isEnabled := boolean
requestBody.SetIsEnabled(&isEnabled) 
status := graphmodels.STRING_LEGALHOLDSTATUS 
requestBody.SetStatus(&status) 
contentQuery := "String"
requestBody.SetContentQuery(&contentQuery) 
errors := []string {
	"String",

}
requestBody.SetErrors(errors)
displayName := "String"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.Compliance().Ediscovery().Cases().ByCaseId("case-id").LegalHolds().Post(context.Background(), requestBody, nil)


```