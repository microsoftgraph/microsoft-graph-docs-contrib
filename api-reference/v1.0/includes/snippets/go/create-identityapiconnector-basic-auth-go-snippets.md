---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewIdentityApiConnector()
displayName := "Test API"
requestBody.SetDisplayName(&displayName) 
targetUrl := "https://someapi.com/api"
requestBody.SetTargetUrl(&targetUrl) 
authenticationConfiguration := graphmodels.NewBasicAuthentication()
username := "MyUsername"
authenticationConfiguration.SetUsername(&username) 
password := "MyPassword"
authenticationConfiguration.SetPassword(&password) 
requestBody.SetAuthenticationConfiguration(authenticationConfiguration)

apiConnectors, err := graphClient.Identity().ApiConnectors().Post(context.Background(), requestBody, nil)


```