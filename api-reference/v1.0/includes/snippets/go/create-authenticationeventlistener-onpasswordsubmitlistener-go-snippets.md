---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewAuthenticationEventListener()
displayName := "JIT migration listener"
requestBody.SetDisplayName(&displayName) 
conditions := graphmodels.NewAuthenticationConditions()
applications := graphmodels.NewAuthenticationConditionsApplications()


authenticationConditionApplication := graphmodels.NewAuthenticationConditionApplication()
appId := "00011111-aaaa-2222-bbbb-3333cccc4444"
authenticationConditionApplication.SetAppId(&appId) 

includeApplications := []graphmodels.AuthenticationConditionApplicationable {
	authenticationConditionApplication,
}
applications.SetIncludeApplications(includeApplications)
additionalData := map[string]interface{}{
	includeAllApplications := false
applications.SetIncludeAllApplications(&includeAllApplications) 
}
applications.SetAdditionalData(additionalData)
conditions.SetApplications(applications)
requestBody.SetConditions(conditions)
additionalData := map[string]interface{}{
handler := graph.New()
migrationPropertyId := "extension_b7b1c57b532f40b8b5ed4b7a7ba67401_requiresMigration"
handler.SetMigrationPropertyId(&migrationPropertyId) 
customExtension := graph.New()
id := "6fc5012e-7665-43d6-9708-4370863f4e6e"
customExtension.SetId(&id) 
	handler.SetCustomExtension(customExtension)
	requestBody.SetHandler(handler)
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
authenticationEventListeners, err := graphClient.Identity().AuthenticationEventListeners().Post(context.Background(), requestBody, nil)


```