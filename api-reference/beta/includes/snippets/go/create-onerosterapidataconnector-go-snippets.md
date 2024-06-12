---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsindustrydata "github.com/microsoftgraph/msgraph-beta-sdk-go/models/industrydata"
	  //other-imports
)

requestBody := graphmodelsindustrydata.NewIndustryDataConnector()
displayName := "Generic OAuth2 Connector"
requestBody.SetDisplayName(&displayName) 
apiFormat := graphmodels.ONEROSTER_APIFORMAT 
requestBody.SetApiFormat(&apiFormat) 
baseUrl := "https://fakeProvider.net/ims/oneroster/v1p1"
requestBody.SetBaseUrl(&baseUrl) 
apiVersion := "1.1"
requestBody.SetApiVersion(&apiVersion) 
credential := graphmodelsindustrydata.NewOAuth2ClientCredential()
displayName := "One Roster API Credentials"
credential.SetDisplayName(&displayName) 
clientId := "530be723-6af3-4952-8658-668fb2598ad7"
credential.SetClientId(&clientId) 
clientSecret := "thisIsASecret"
credential.SetClientSecret(&clientSecret) 
tokenUrl := "https://login.microsoftonline.com/c27f982b-f7ee-4b8b-bb0e-3c55bd1dc02c/oauth2/token"
credential.SetTokenUrl(&tokenUrl) 
scope := null
credential.SetScope(&scope) 
requestBody.SetCredential(credential)
isDemographicsEnabled := false
requestBody.SetIsDemographicsEnabled(&isDemographicsEnabled) 
isFlagsEnabled := false
requestBody.SetIsFlagsEnabled(&isFlagsEnabled) 
isContactsEnabled := false
requestBody.SetIsContactsEnabled(&isContactsEnabled) 
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/beta/external/industryData/sourceSystems('c93a6e02-aeb7-437f-cc52-08dc3fc158af')", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
dataConnectors, err := graphClient.External().IndustryData().DataConnectors().Post(context.Background(), requestBody, nil)


```