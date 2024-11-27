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
displayName := "Contoso AAD B2C"
requestBody.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
	"clientId" : "00001111-aaaa-2222-bbbb-3333cccc4444", 
	"issuer" : "https://contoso.b2clogin.com/00001111-aaaa-2222-bbbb-3333cccc4444/v2.0/", 
	"wellKnownEndpoint" : "https://contoso.b2clogin.com/contoso.onmicrosoft.com/v2.0/.well-known/openid-configuration?p=B2C_1A_SIGNINEMAIL", 
	"responseType" : "code", 
	"scope" : "openid profile email offline_access", 
clientAuthentication := graph.New()
clientSecret := "4294967296"
clientAuthentication.SetClientSecret(&clientSecret) 
	requestBody.SetClientAuthentication(clientAuthentication)
inboundClaimMapping := graph.New()
sub := "sub"
inboundClaimMapping.SetSub(&sub) 
name := "name"
inboundClaimMapping.SetName(&name) 
given_name := "given_name"
inboundClaimMapping.SetGiven_name(&given_name) 
family_name := "family_name"
inboundClaimMapping.SetFamily_name(&family_name) 
email := "email"
inboundClaimMapping.SetEmail(&email) 
email_verified := "email_verified"
inboundClaimMapping.SetEmail_verified(&email_verified) 
phone_number := "phone_number"
inboundClaimMapping.SetPhone_number(&phone_number) 
phone_number_verified := "phone_number_verified"
inboundClaimMapping.SetPhone_number_verified(&phone_number_verified) 
address := graph.New()
street_address := "street_address"
address.SetStreet_address(&street_address) 
locality := "locality"
address.SetLocality(&locality) 
region := "region"
address.SetRegion(&region) 
postal_code := "postal_code"
address.SetPostal_code(&postal_code) 
country := "country"
address.SetCountry(&country) 
	inboundClaimMapping.SetAddress(address)
	requestBody.SetInboundClaimMapping(inboundClaimMapping)
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
identityProviders, err := graphClient.Identity().IdentityProviders().Post(context.Background(), requestBody, nil)


```