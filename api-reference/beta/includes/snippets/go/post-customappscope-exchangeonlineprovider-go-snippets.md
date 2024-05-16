---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
customAppScopes, err := graphClient.RoleManagement().Exchange().CustomAppScopes().Post(context.Background(), requestBody, nil)


```