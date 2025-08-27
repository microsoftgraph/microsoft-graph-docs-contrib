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
signInContext := graphmodels.NewUserActionContext()
userAction := graphmodels.REGISTERSECURITYINFORMATION_USERACTION 
signInContext.SetUserAction(&userAction) 
requestBody.SetSignInContext(signInContext)
signInConditions := graphmodels.NewSignInConditions()
devicePlatform := graphmodels.MACOS_CONDITIONALACCESSDEVICEPLATFORM 
signInConditions.SetDevicePlatform(&devicePlatform) 
clientAppType := graphmodels.BROWSER_CONDITIONALACCESSCLIENTAPP 
signInConditions.SetClientAppType(&clientAppType) 
signInRiskLevel := graphmodels.LOW_RISKLEVEL 
signInConditions.SetSignInRiskLevel(&signInRiskLevel) 
userRiskLevel := graphmodels.HIGH_RISKLEVEL 
signInConditions.SetUserRiskLevel(&userRiskLevel) 
servicePrincipalRiskLevel := graphmodels.NONE_RISKLEVEL 
signInConditions.SetServicePrincipalRiskLevel(&servicePrincipalRiskLevel) 
country := "CA"
signInConditions.SetCountry(&country) 
ipAddress := "40.77.182.32"
signInConditions.SetIpAddress(&ipAddress) 
insiderRiskLevel := graphmodels.MINOR_INSIDERRISKLEVEL 
signInConditions.SetInsiderRiskLevel(&insiderRiskLevel) 
authenticationFlow := graphmodels.NewAuthenticationFlow()
transferMethod := graphmodels.DEVICECODEFLOW_CONDITIONALACCESSTRANSFERMETHODS 
authenticationFlow.SetTransferMethod(&transferMethod) 
signInConditions.SetAuthenticationFlow(authenticationFlow)
deviceInfo := graphmodels.NewDeviceInfo()
trustType := "EntraID"
deviceInfo.SetTrustType(&trustType) 
signInConditions.SetDeviceInfo(deviceInfo)
requestBody.SetSignInConditions(signInConditions)
appliedPoliciesOnly := true
requestBody.SetAppliedPoliciesOnly(&appliedPoliciesOnly) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
evaluate, err := graphClient.Identity().ConditionalAccess().Evaluate().PostAsEvaluatePostResponse(context.Background(), requestBody, nil)


```