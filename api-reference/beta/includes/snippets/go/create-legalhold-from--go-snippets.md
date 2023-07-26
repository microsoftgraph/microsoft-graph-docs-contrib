---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsediscovery "github.com/microsoftgraph/msgraph-beta-sdk-go/models/ediscovery"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelsediscovery.NewLegalHold()
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