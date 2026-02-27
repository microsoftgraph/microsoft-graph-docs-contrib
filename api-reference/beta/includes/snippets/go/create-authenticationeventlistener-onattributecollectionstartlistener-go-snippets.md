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

requestBody := graphmodels.NewAuthenticationEventListener()
priority := int32(500)
requestBody.SetPriority(&priority) 
conditions := graphmodels.NewAuthenticationConditions()
applications := graphmodels.NewAuthenticationConditionsApplications()
includeAllApplications := false
applications.SetIncludeAllApplications(&includeAllApplications) 


authenticationConditionApplication := graphmodels.NewAuthenticationConditionApplication()
appId := "0001111-aaaa-2222-bbbb-3333cccc4444"
authenticationConditionApplication.SetAppId(&appId) 

includeApplications := []graphmodels.AuthenticationConditionApplicationable {
	authenticationConditionApplication,
}
applications.SetIncludeApplications(includeApplications)
conditions.SetApplications(applications)
requestBody.SetConditions(conditions)
handler := graphmodels.NewOnAttributeCollectionStartCustomExtensionHandler()
customExtension := graphmodels.NewOnAttributeCollectionStartCustomExtension()
id := "2d9c3e8d-88a9-444e-8c4c-f0c6c4fe1c02"
customExtension.SetId(&id) 
handler.SetCustomExtension(customExtension)
requestBody.SetHandler(handler)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
authenticationEventListeners, err := graphClient.Identity().AuthenticationEventListeners().Post(context.Background(), requestBody, nil)


```