---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphserviceprincipals "github.com/microsoftgraph/msgraph-beta-sdk-go/serviceprincipals"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphserviceprincipals.NewCreatePasswordSingleSignOnCredentialsPostRequestBody()
id := "5793aa3b-cca9-4794-679a240f8b58"
requestBody.SetId(&id) 


credential := graphmodels.NewCredential()
fieldId := "param_username"
credential.SetFieldId(&fieldId) 
value := "myusername"
credential.SetValue(&value) 
type := "username"
credential.SetType(&type) 
credential1 := graphmodels.NewCredential()
fieldId := "param_password"
credential1.SetFieldId(&fieldId) 
value := "pa$$w0rd"
credential1.SetValue(&value) 
type := "password"
credential1.SetType(&type) 

credentials := []graphmodels.Credentialable {
	credential,
	credential1,
}
requestBody.SetCredentials(credentials)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
createPasswordSingleSignOnCredentials, err := graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").CreatePasswordSingleSignOnCredentials().Post(context.Background(), requestBody, nil)


```