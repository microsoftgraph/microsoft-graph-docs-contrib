---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewIdentityApiConnector()
displayName := "Test API"
requestBody.SetDisplayName(&displayName) 
targetUrl := "https://someapi.com/api"
requestBody.SetTargetUrl(&targetUrl) 
authenticationConfiguration := graphmodels.NewBasicAuthentication()
username := "<USERNAME>"
authenticationConfiguration.SetUsername(&username) 
password := "<PASSWORD>"
authenticationConfiguration.SetPassword(&password) 
requestBody.SetAuthenticationConfiguration(authenticationConfiguration)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
apiConnectors, err := graphClient.Identity().ApiConnectors().Post(context.Background(), requestBody, nil)


```