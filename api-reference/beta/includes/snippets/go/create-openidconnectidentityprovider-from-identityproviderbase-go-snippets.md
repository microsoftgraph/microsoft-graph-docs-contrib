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

requestBody := graphmodels.NewIdentityProviderBase()
displayName := "Contoso"
requestBody.SetDisplayName(&displayName) 
clientId := "00001111-aaaa-2222-bbbb-3333cccc4444"
requestBody.SetClientId(&clientId) 
clientSecret := "4294967296"
requestBody.SetClientSecret(&clientSecret) 
claimsMapping := graphmodels.NewClaimsMapping()
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
domainHint := "mycustomoidc"
requestBody.SetDomainHint(&domainHint) 
metadataUrl := "https://mycustomoidc.com/.well-known/openid-configuration"
requestBody.SetMetadataUrl(&metadataUrl) 
responseMode := graphmodels.FORM_POST_OPENIDCONNECTRESPONSEMODE 
requestBody.SetResponseMode(&responseMode) 
responseType := graphmodels.CODE_OPENIDCONNECTRESPONSETYPES 
requestBody.SetResponseType(&responseType) 
scope := "openid"
requestBody.SetScope(&scope) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
identityProviders, err := graphClient.Identity().IdentityProviders().Post(context.Background(), requestBody, nil)


```