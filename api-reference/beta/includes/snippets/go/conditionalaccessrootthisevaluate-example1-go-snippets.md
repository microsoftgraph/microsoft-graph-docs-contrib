---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphidentity "github.com/microsoftgraph/msgraph-beta-sdk-go/identity"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphidentity.NewEvaluatePostRequestBody()
signInIdentity := graphmodels.NewUserSignIn()
userId := "15dc174b-f34c-4588-ac45-61d6e05dce93"
signInIdentity.SetUserId(&userId) 
requestBody.SetSignInIdentity(signInIdentity)
signInContext := graphmodels.NewApplicationContext()
includeApplications := []string {
	"00000003-0000-0ff1-ce00-000000000000",
}
signInContext.SetIncludeApplications(includeApplications)
requestBody.SetSignInContext(signInContext)
signInConditions := graphmodels.NewSignInConditions()
devicePlatform := graphmodels.ANDROID_CONDITIONALACCESSDEVICEPLATFORM 
signInConditions.SetDevicePlatform(&devicePlatform) 
clientAppType := graphmodels.BROWSER_CONDITIONALACCESSCLIENTAPP 
signInConditions.SetClientAppType(&clientAppType) 
signInRiskLevel := graphmodels.HIGH_RISKLEVEL 
signInConditions.SetSignInRiskLevel(&signInRiskLevel) 
userRiskLevel := graphmodels.HIGH_RISKLEVEL 
signInConditions.SetUserRiskLevel(&userRiskLevel) 
country := "US"
signInConditions.SetCountry(&country) 
ipAddress := "40.77.182.32"
signInConditions.SetIpAddress(&ipAddress) 
insiderRiskLevel := graphmodels.ELEVATED_INSIDERRISKLEVEL 
signInConditions.SetInsiderRiskLevel(&insiderRiskLevel) 
authenticationFlow := graphmodels.NewAuthenticationFlow()
transferMethod := graphmodels.DEVICECODEFLOW_CONDITIONALACCESSTRANSFERMETHODS 
authenticationFlow.SetTransferMethod(&transferMethod) 
signInConditions.SetAuthenticationFlow(authenticationFlow)
deviceInfo := graphmodels.NewDeviceInfo()
isCompliant := true
deviceInfo.SetIsCompliant(&isCompliant) 
signInConditions.SetDeviceInfo(deviceInfo)
requestBody.SetSignInConditions(signInConditions)
appliedPoliciesOnly := true
requestBody.SetAppliedPoliciesOnly(&appliedPoliciesOnly) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
evaluate, err := graphClient.Identity().ConditionalAccess().Evaluate().PostAsEvaluatePostResponse(context.Background(), requestBody, nil)


```