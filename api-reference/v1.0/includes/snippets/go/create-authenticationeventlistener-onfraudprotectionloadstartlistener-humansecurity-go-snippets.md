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
conditions := graphmodels.NewAuthenticationConditions()
applications := graphmodels.NewAuthenticationConditionsApplications()


authenticationConditionApplication := graphmodels.NewAuthenticationConditionApplication()
appId := "0001111-aaaa-2222-bbbb-3333cccc4444"
authenticationConditionApplication.SetAppId(&appId) 

includeApplications := []graphmodels.AuthenticationConditionApplicationable {
	authenticationConditionApplication,
}
applications.SetIncludeApplications(includeApplications)
conditions.SetApplications(applications)
requestBody.SetConditions(conditions)
handler := graphmodels.NewOnFraudProtectionLoadStartExternalUsersAuthHandler()
signUp := graphmodels.NewFraudProtectionProviderConfiguration()
fraudProtectionProvider := graphmodels.NewHumanSecurityFraudProtectionProvider()
id := "fabe5100-cc02-46c1-bd0e-ce885fe367fd"
fraudProtectionProvider.SetId(&id) 
signUp.SetFraudProtectionProvider(fraudProtectionProvider)
handler.SetSignUp(signUp)
requestBody.SetHandler(handler)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
authenticationEventListeners, err := graphClient.Identity().AuthenticationEventListeners().Post(context.Background(), requestBody, nil)


```