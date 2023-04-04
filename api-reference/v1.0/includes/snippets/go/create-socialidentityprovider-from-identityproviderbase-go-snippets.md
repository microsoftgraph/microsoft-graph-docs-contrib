---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewIdentityProviderBase()
displayName := "Login with Amazon"
requestBody.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
	"identityProviderType" : "Amazon", 
	"clientId" : "56433757-cadd-4135-8431-2c9e3fd68ae8", 
	"clientSecret" : "000000000000", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Identity().IdentityProviders().Post(context.Background(), requestBody, nil)


```