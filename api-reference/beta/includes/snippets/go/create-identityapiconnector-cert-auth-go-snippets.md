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
displayName := "Test API"
requestBody.SetDisplayName(&displayName) 
targetUrl := "https://someotherapi.com/api"
requestBody.SetTargetUrl(&targetUrl) 
authenticationConfiguration := graphmodels.NewPkcs12Certificate()
pkcs12Value := "eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkEyNTZHQ00ifQ...kDJ04sJShkkgjL9Bm49plA"
authenticationConfiguration.SetPkcs12Value(&pkcs12Value) 
password := "<password>"
authenticationConfiguration.SetPassword(&password) 
requestBody.SetAuthenticationConfiguration(authenticationConfiguration)

apiConnectors, err := graphClient.Identity().ApiConnectors().Post(context.Background(), requestBody, nil)


```