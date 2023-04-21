---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models//security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewEdiscoveryReviewTag()
displayName := "My tag API"
requestBody.SetDisplayName(&displayName) 
description := "Use Graph API to create tags"
requestBody.SetDescription(&description) 
childSelectability := graphmodels.MANY_CHILDSELECTABILITY 
requestBody.SetChildSelectability(&childSelectability) 
additionalData := map[string]interface{}{
	"odataBind" : "", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Security().Cases().EdiscoveryCases().ByEdiscoveryCaseId("ediscoveryCase-id").Tags().Post(context.Background(), requestBody, nil)


```