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


requestBody := graphmodels.NewIdentityProviderBase()
displayName := "Login with the Contoso identity provider"
requestBody.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
	"clientId" : "56433757-cadd-4135-8431-2c9e3fd68ae8", 
	"clientSecret" : "12345", 
claimsMapping := graphmodels.New()
userId := "myUserId"
claimsMapping.SetUserId(&userId) 
givenName := "myGivenName"
claimsMapping.SetGivenName(&givenName) 
surname := "mySurname"
claimsMapping.SetSurname(&surname) 
email := "myEmail"
claimsMapping.SetEmail(&email) 
displayName := "myDisplayName"
claimsMapping.SetDisplayName(&displayName) 
	requestBody.SetClaimsMapping(claimsMapping)
	"domainHint" : "mycustomoidc", 
	"metadataUrl" : "https://mycustomoidc.com/.well-known/openid-configuration", 
	"responseMode" : "form_post", 
	"responseType" : "code", 
	"scope" : "openid", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Identity().IdentityProviders().Post(context.Background(), requestBody, nil)


```