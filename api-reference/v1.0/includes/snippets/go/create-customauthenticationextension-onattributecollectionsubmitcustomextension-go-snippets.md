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
displayName := "attributeCollectionSubmitName"
requestBody.SetDisplayName(&displayName) 
description := "example description"
requestBody.SetDescription(&description) 
authenticationConfiguration := graphmodels.NewAzureAdTokenAuthentication()
resourceId := "api://contoso.com/fb96de85-2abe-4b02-b45f-64ba122c509e"
authenticationConfiguration.SetResourceId(&resourceId) 
requestBody.SetAuthenticationConfiguration(authenticationConfiguration)
endpointConfiguration := graphmodels.NewHttpRequestEndpoint()
targetUrl := "https://contoso.com"
endpointConfiguration.SetTargetUrl(&targetUrl) 
requestBody.SetEndpointConfiguration(endpointConfiguration)
clientConfiguration := graphmodels.NewCustomExtensionClientConfiguration()
timeoutInMilliseconds := int32(2000)
clientConfiguration.SetTimeoutInMilliseconds(&timeoutInMilliseconds) 
maximumRetries := int32(1)
clientConfiguration.SetMaximumRetries(&maximumRetries) 
requestBody.SetClientConfiguration(clientConfiguration)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
customAuthenticationExtensions, err := graphClient.Identity().CustomAuthenticationExtensions().Post(context.Background(), requestBody, nil)


```