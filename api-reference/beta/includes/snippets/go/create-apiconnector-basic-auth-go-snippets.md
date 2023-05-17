---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewIdentityApiConnector()
displayName := "Test API"
requestBody.SetDisplayName(&displayName) 
targetUrl := "https://someapi.com/api"
requestBody.SetTargetUrl(&targetUrl) 
authenticationConfiguration := graphmodels.NewApiAuthenticationConfigurationBase()
additionalData := map[string]interface{}{
	"username" : "<USERNAME>", 
	"password" : "<PASSWORD>", 
}
authenticationConfiguration.SetAdditionalData(additionalData)
requestBody.SetAuthenticationConfiguration(authenticationConfiguration)

result, err := graphClient.Identity().ApiConnectors().Post(context.Background(), requestBody, nil)


```