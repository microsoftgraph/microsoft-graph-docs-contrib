---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelssecurity.NewEdiscoveryReviewTag()
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