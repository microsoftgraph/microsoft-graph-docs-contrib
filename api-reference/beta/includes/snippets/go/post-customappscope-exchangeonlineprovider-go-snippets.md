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
type := "RecipientScope"
requestBody.SetType(&type) 
displayName := "Protected Exec Users"
requestBody.SetDisplayName(&displayName) 
customAttributes := graphmodels.NewCustomAppScopeAttributesDictionary()
additionalData := map[string]interface{}{
	exclusive := false
customAttributes.SetExclusive(&exclusive) 
	"recipientFilter" : "Title -like 'VP*'", 
}
customAttributes.SetAdditionalData(additionalData)
requestBody.SetCustomAttributes(customAttributes)

result, err := graphClient.RoleManagement().Exchange().CustomAppScopes().Post(context.Background(), requestBody, nil)


```