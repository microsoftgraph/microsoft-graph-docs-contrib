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
	  //other-imports
)

requestBody := graphidentity.NewEvaluatePostRequestBody()
appliedPoliciesOnly := true
requestBody.SetAppliedPoliciesOnly(&appliedPoliciesOnly) 
additionalData := map[string]interface{}{
signInIdentity := graph.New()
userId := "15dc174b-f34c-4588-ac45-61d6e05dce93"
signInIdentity.SetUserId(&userId) 
	requestBody.SetSignInIdentity(signInIdentity)
signInContext := graph.New()
userAction := "registerSecurityInformation"
signInContext.SetUserAction(&userAction) 
	requestBody.SetSignInContext(signInContext)
signInConditions := graph.New()
devicePlatform := "macOS"
signInConditions.SetDevicePlatform(&devicePlatform) 
clientAppType := "browser"
signInConditions.SetClientAppType(&clientAppType) 
signInRiskLevel := "low"
signInConditions.SetSignInRiskLevel(&signInRiskLevel) 
userRiskLevel := "high"
signInConditions.SetUserRiskLevel(&userRiskLevel) 
servicePrincipalRiskLevel := "none"
signInConditions.SetServicePrincipalRiskLevel(&servicePrincipalRiskLevel) 
country := "CA"
signInConditions.SetCountry(&country) 
ipAddress := "40.77.182.32"
signInConditions.SetIpAddress(&ipAddress) 
insiderRiskLevel := "minor"
signInConditions.SetInsiderRiskLevel(&insiderRiskLevel) 
authenticationFlow := graph.New()
transferMethod := "deviceCodeFlow"
authenticationFlow.SetTransferMethod(&transferMethod) 
	signInConditions.SetAuthenticationFlow(authenticationFlow)
deviceInfo := graph.New()
trustType := "EntraID"
deviceInfo.SetTrustType(&trustType) 
	signInConditions.SetDeviceInfo(deviceInfo)
	requestBody.SetSignInConditions(signInConditions)
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
evaluate, err := graphClient.Identity().ConditionalAccess().Evaluate().PostAsEvaluatePostResponse(context.Background(), requestBody, nil)


```