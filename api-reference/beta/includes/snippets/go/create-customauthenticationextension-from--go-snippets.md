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
endpointConfiguration := graphmodels.NewCustomExtensionEndpointConfiguration()
additionalData := map[string]interface{}{
	"targetUrl" : "https://authenticationeventsAPI.contoso.com", 
}
endpointConfiguration.SetAdditionalData(additionalData)
requestBody.SetEndpointConfiguration(endpointConfiguration)
authenticationConfiguration := graphmodels.NewCustomExtensionAuthenticationConfiguration()
additionalData := map[string]interface{}{
	"resourceId" : "api://authenticationeventsAPI.contoso.com/a13d0fc1-04ab-4ede-b215-63de0174cbb4", 
}
authenticationConfiguration.SetAdditionalData(additionalData)
requestBody.SetAuthenticationConfiguration(authenticationConfiguration)
clientConfiguration := graphmodels.NewCustomExtensionClientConfiguration()
timeoutInMilliseconds := int32(2000)
clientConfiguration.SetTimeoutInMilliseconds(&timeoutInMilliseconds) 
additionalData := map[string]interface{}{
	"maximumRetries" : int32(1) , 
}
clientConfiguration.SetAdditionalData(additionalData)
requestBody.SetClientConfiguration(clientConfiguration)
additionalData := map[string]interface{}{


 := graphmodels.New()
claimIdInApiResponse := "DateOfBirth"
.SetClaimIdInApiResponse(&claimIdInApiResponse) 
 := graphmodels.New()
claimIdInApiResponse := "CustomRoles"
.SetClaimIdInApiResponse(&claimIdInApiResponse) 

	claimsForTokenConfiguration := []graphmodels.Objectable {
		,
		,

	}
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Identity().CustomAuthenticationExtensions().Post(context.Background(), requestBody, nil)


```