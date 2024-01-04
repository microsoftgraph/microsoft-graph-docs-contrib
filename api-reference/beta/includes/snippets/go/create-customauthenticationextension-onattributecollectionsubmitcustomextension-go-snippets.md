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

customAuthenticationExtensions, err := graphClient.Identity().CustomAuthenticationExtensions().Post(context.Background(), requestBody, nil)


```