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


requestBody := graphmodels.NewAuthenticationEventListener()
priority := int32(500)
requestBody.SetPriority(&priority) 
conditions := graphmodels.NewAuthenticationConditions()
applications := graphmodels.NewAuthenticationConditionsApplications()
includeAllApplications := false
applications.SetIncludeAllApplications(&includeAllApplications) 


authenticationConditionApplication := graphmodels.NewAuthenticationConditionApplication()
appId := "a7eed01f-a333-4983-bc6b-d359ec9e5eef"
authenticationConditionApplication.SetAppId(&appId) 

includeApplications := []graphmodels.AuthenticationConditionApplicationable {
	authenticationConditionApplication,
}
applications.SetIncludeApplications(includeApplications)
conditions.SetApplications(applications)
requestBody.SetConditions(conditions)
handler := graphmodels.NewOnAttributeCollectionSubmitCustomExtensionHandler()
customExtension := graphmodels.NewOnAttributeCollectionSubmitCustomExtension()
id := "66867d1f-7824-4f38-aad1-75da1ad09ee2"
customExtension.SetId(&id) 
handler.SetCustomExtension(customExtension)
requestBody.SetHandler(handler)

authenticationEventListeners, err := graphClient.Identity().AuthenticationEventListeners().Post(context.Background(), requestBody, nil)


```