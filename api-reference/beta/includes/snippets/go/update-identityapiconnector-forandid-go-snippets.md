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


requestBody := graphmodels.NewIdentityApiConnector()
displayName := "New Test API"
requestBody.SetDisplayName(&displayName) 
targetUrl := "https://otherapi.com/api/endpoint"
requestBody.SetTargetUrl(&targetUrl) 
authenticationConfiguration := graphmodels.NewBasicAuthentication()
username := "<NEW_USERNAME>"
authenticationConfiguration.SetUsername(&username) 
password := "<NEW_PASSWORD>"
authenticationConfiguration.SetPassword(&password) 
requestBody.SetAuthenticationConfiguration(authenticationConfiguration)

result, err := graphClient.Identity().ApiConnectors().ByApiConnectorId("identityApiConnector-id").Patch(context.Background(), requestBody, nil)


```