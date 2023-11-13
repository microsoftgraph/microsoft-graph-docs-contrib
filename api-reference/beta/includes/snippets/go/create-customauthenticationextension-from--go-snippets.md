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


requestBody := graphmodels.NewCustomAuthenticationExtension()
displayName := "onTokenIssuanceStartCustomExtension"
requestBody.SetDisplayName(&displayName) 
description := "Fetch additional claims from custom user store"
requestBody.SetDescription(&description) 
endpointConfiguration := graphmodels.NewHttpRequestEndpoint()
targetUrl := "https://authenticationeventsAPI.contoso.com"
endpointConfiguration.SetTargetUrl(&targetUrl) 
requestBody.SetEndpointConfiguration(endpointConfiguration)
authenticationConfiguration := graphmodels.NewAzureAdTokenAuthentication()
resourceId := "api://authenticationeventsAPI.contoso.com/a13d0fc1-04ab-4ede-b215-63de0174cbb4"
authenticationConfiguration.SetResourceId(&resourceId) 
requestBody.SetAuthenticationConfiguration(authenticationConfiguration)
clientConfiguration := graphmodels.NewCustomExtensionClientConfiguration()
timeoutInMilliseconds := int32(2000)
clientConfiguration.SetTimeoutInMilliseconds(&timeoutInMilliseconds) 
maximumRetries := int32(1)
clientConfiguration.SetMaximumRetries(&maximumRetries) 
requestBody.SetClientConfiguration(clientConfiguration)


onTokenIssuanceStartReturnClaim := graphmodels.NewOnTokenIssuanceStartReturnClaim()
claimIdInApiResponse := "DateOfBirth"
onTokenIssuanceStartReturnClaim.SetClaimIdInApiResponse(&claimIdInApiResponse) 
onTokenIssuanceStartReturnClaim1 := graphmodels.NewOnTokenIssuanceStartReturnClaim()
claimIdInApiResponse := "CustomRoles"
onTokenIssuanceStartReturnClaim1.SetClaimIdInApiResponse(&claimIdInApiResponse) 

claimsForTokenConfiguration := []graphmodels.OnTokenIssuanceStartReturnClaimable {
	onTokenIssuanceStartReturnClaim,
	onTokenIssuanceStartReturnClaim1,
}
requestBody.SetClaimsForTokenConfiguration(claimsForTokenConfiguration)

customAuthenticationExtensions, err := graphClient.Identity().CustomAuthenticationExtensions().Post(context.Background(), requestBody, nil)


```