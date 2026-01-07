---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphidentity "github.com/microsoftgraph/msgraph-sdk-go/identity"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphidentity.NewEvaluatePostRequestBody()
signInIdentity := graphmodels.NewUserSignIn()
userId := "15dc174b-f34c-4588-ac45-61d6e05dce93"
signInIdentity.SetUserId(&userId) 
requestBody.SetSignInIdentity(signInIdentity)
signInContext := graphmodels.NewAuthContext()
authenticationContextValue := "c37"
signInContext.SetAuthenticationContextValue(&authenticationContextValue) 
requestBody.SetSignInContext(signInContext)
signInConditions := graphmodels.NewSignInConditions()
devicePlatform := graphmodels.WINDOWS_CONDITIONALACCESSDEVICEPLATFORM 
signInConditions.SetDevicePlatform(&devicePlatform) 
clientAppType := graphmodels.MOBILEAPPSANDDESKTOPCLIENTS_CONDITIONALACCESSCLIENTAPP 
signInConditions.SetClientAppType(&clientAppType) 
signInRiskLevel := graphmodels.MEDIUM_RISKLEVEL 
signInConditions.SetSignInRiskLevel(&signInRiskLevel) 
userRiskLevel := graphmodels.NONE_RISKLEVEL 
signInConditions.SetUserRiskLevel(&userRiskLevel) 
country := "US"
signInConditions.SetCountry(&country) 
ipAddress := "40.77.182.32"
signInConditions.SetIpAddress(&ipAddress) 
insiderRiskLevel := graphmodels.MODERATE_INSIDERRISKLEVEL 
signInConditions.SetInsiderRiskLevel(&insiderRiskLevel) 
authenticationFlow := graphmodels.NewAuthenticationFlow()
transferMethod := graphmodels.AUTHENTICATIONTRANSFER_CONDITIONALACCESSTRANSFERMETHODS 
authenticationFlow.SetTransferMethod(&transferMethod) 
signInConditions.SetAuthenticationFlow(authenticationFlow)
deviceInfo := graphmodels.NewDeviceInfo()
profileType := "Standard"
deviceInfo.SetProfileType(&profileType) 
signInConditions.SetDeviceInfo(deviceInfo)
requestBody.SetSignInConditions(signInConditions)
appliedPoliciesOnly := true
requestBody.SetAppliedPoliciesOnly(&appliedPoliciesOnly) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
evaluate, err := graphClient.Identity().ConditionalAccess().Evaluate().PostAsEvaluatePostResponse(context.Background(), requestBody, nil)


```