---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewOAuth2PermissionGrant()
clientId := "ef969797-201d-4f6b-960c-e9ed5f31dab5"
requestBody.SetClientId(&clientId) 
consentType := "AllPrincipals"
requestBody.SetConsentType(&consentType) 
resourceId := "943603e4-e787-4fe9-93d1-e30f749aae39"
requestBody.SetResourceId(&resourceId) 
scope := "DelegatedPermissionGrant.ReadWrite.All"
requestBody.SetScope(&scope) 
startTime , err := time.Parse(time.RFC3339, "2022-03-17T00:00:00Z")
requestBody.SetStartTime(&startTime) 
expiryTime , err := time.Parse(time.RFC3339, "2023-03-17T00:00:00Z")
requestBody.SetExpiryTime(&expiryTime) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
oauth2PermissionGrants, err := graphClient.Oauth2PermissionGrants().Post(context.Background(), requestBody, nil)


```