---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCustomAppScope()
customAttributes := graphmodels.NewCustomAppScopeAttributesDictionary()
additionalData := map[string]interface{}{
	"recipientFilter" : "City -eq 'Seattle'", 
}
customAttributes.SetAdditionalData(additionalData)
requestBody.SetCustomAttributes(customAttributes)

customAppScopes, err := graphClient.RoleManagement().Exchange().CustomAppScopes().ByCustomAppScopeId("customAppScope-id").Patch(context.Background(), requestBody, nil)


```