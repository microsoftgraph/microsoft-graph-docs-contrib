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
conditions := graphmodels.NewAuthenticationConditions()
applications := graphmodels.NewAuthenticationConditionsApplications()
includeAllApplications := false
applications.SetIncludeAllApplications(&includeAllApplications) 


authenticationConditionApplication := graphmodels.NewAuthenticationConditionApplication()
appId := "a13d0fc1-04ab-4ede-b215-63de0174cbb4"
authenticationConditionApplication.SetAppId(&appId) 

includeApplications := []graphmodels.AuthenticationConditionApplicationable {
	authenticationConditionApplication,
}
applications.SetIncludeApplications(includeApplications)
conditions.SetApplications(applications)
requestBody.SetConditions(conditions)
priority := int32(500)
requestBody.SetPriority(&priority) 
handler := graphmodels.NewOnTokenIssuanceStartCustomExtensionHandler()
customExtension := graphmodels.NewOnTokenIssuanceStartCustomExtension()
id := "6fc5012e-7665-43d6-9708-4370863f4e6e"
customExtension.SetId(&id) 
handler.SetCustomExtension(customExtension)
requestBody.SetHandler(handler)

authenticationEventListeners, err := graphClient.Identity().AuthenticationEventListeners().Post(context.Background(), requestBody, nil)


```