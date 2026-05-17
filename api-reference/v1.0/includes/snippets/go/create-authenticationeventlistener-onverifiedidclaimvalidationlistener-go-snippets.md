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
displayName := "Verified ID Claim Validation Listener"
requestBody.SetDisplayName(&displayName) 
conditions := graphmodels.NewAuthenticationConditions()
applications := graphmodels.NewAuthenticationConditionsApplications()


authenticationConditionApplication := graphmodels.NewAuthenticationConditionApplication()
appId := "63856651-13d9-4784-9abf-20758d509e19"
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
authenticationEventsFlowId := "5a8e8f57-82b2-4cbf-b145-3e6e0c154897"
requestBody.SetAuthenticationEventsFlowId(&authenticationEventsFlowId) 
handler := graphmodels.NewOnVerifiedIdClaimValidationCustomExtensionHandler()
configuration := graphmodels.NewCustomExtensionOverwriteConfiguration()
clientConfiguration := graphmodels.NewCustomExtensionClientConfiguration()
maximumRetries := int32(1)
clientConfiguration.SetMaximumRetries(&maximumRetries) 
timeoutInMilliseconds := int32(2000)
clientConfiguration.SetTimeoutInMilliseconds(&timeoutInMilliseconds) 
configuration.SetClientConfiguration(clientConfiguration)
behaviorOnError := graphmodels.NewCustomExtensionBehaviorOnError()
configuration.SetBehaviorOnError(behaviorOnError)
handler.SetConfiguration(configuration)
customExtension := graphmodels.NewOnVerifiedIdClaimValidationCustomExtension()
id := "6a0a3429-be77-0aed-951e-1c8aed62bf8a"
customExtension.SetId(&id) 
handler.SetCustomExtension(customExtension)
requestBody.SetHandler(handler)
additionalData := map[string]interface{}{
	"priority" : int32(500) , 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
authenticationEventListeners, err := graphClient.Identity().AuthenticationEventListeners().Post(context.Background(), requestBody, nil)


```