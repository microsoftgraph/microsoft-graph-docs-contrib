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


requestBody := graphmodels.NewOAuth2PermissionGrant()
clientId := "b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94"
requestBody.SetClientId(&clientId) 
consentType := "Principal"
requestBody.SetConsentType(&consentType) 
resourceId := "7ea9e944-71ce-443d-811c-71e8047b557a"
requestBody.SetResourceId(&resourceId) 
principalId := "3fbd929d-8c56-4462-851e-0eb9a7b3a2a5"
requestBody.SetPrincipalId(&principalId) 
scope := "User.Read.All Group.Read.All"
requestBody.SetScope(&scope) 

result, err := graphClient.Oauth2PermissionGrants().Post(context.Background(), requestBody, nil)


```