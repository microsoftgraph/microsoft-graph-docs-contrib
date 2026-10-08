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

requestBody := graphmodels.NewCustomAuthenticationExtension()
displayName := "Verified ID Claim Validation"
requestBody.SetDisplayName(&displayName) 
description := "Validate claims from a Verified ID presentation"
requestBody.SetDescription(&description) 
endpointConfiguration := graphmodels.NewHttpRequestEndpoint()
targetUrl := "https://contoso.azurewebsites.net/api/verifiedIdClaimValidation"
endpointConfiguration.SetTargetUrl(&targetUrl) 
requestBody.SetEndpointConfiguration(endpointConfiguration)
authenticationConfiguration := graphmodels.NewAzureAdTokenAuthentication()
resourceId := "api://contoso.azurewebsites.net/verifiedIdClaimValidation"
authenticationConfiguration.SetResourceId(&resourceId) 
requestBody.SetAuthenticationConfiguration(authenticationConfiguration)
clientConfiguration := graphmodels.NewCustomExtensionClientConfiguration()
timeoutInMilliseconds := int32(2000)
clientConfiguration.SetTimeoutInMilliseconds(&timeoutInMilliseconds) 
maximumRetries := int32(1)
clientConfiguration.SetMaximumRetries(&maximumRetries) 
requestBody.SetClientConfiguration(clientConfiguration)
behaviorOnError := graphmodels.NewCustomExtensionBehaviorOnError()
requestBody.SetBehaviorOnError(behaviorOnError)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
customAuthenticationExtensions, err := graphClient.Identity().CustomAuthenticationExtensions().Post(context.Background(), requestBody, nil)


```