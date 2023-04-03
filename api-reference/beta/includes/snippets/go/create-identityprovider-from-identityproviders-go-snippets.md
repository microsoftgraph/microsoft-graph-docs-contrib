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


requestBody := graphmodels.NewIdentityProvider()
name := "Login with Amazon"
requestBody.SetName(&name) 
type := "Amazon"
requestBody.SetType(&type) 
clientId := "56433757-cadd-4135-8431-2c9e3fd68ae8"
requestBody.SetClientId(&clientId) 
clientSecret := "000000000000"
requestBody.SetClientSecret(&clientSecret) 

result, err := graphClient.IdentityProviders().Post(context.Background(), requestBody, nil)


```