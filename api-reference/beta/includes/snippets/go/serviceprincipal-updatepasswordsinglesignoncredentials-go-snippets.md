---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/ServicePrincipals/Item/UpdatePasswordSingleSignOnCredentials"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewUpdatePasswordSingleSignOnCredentialsPostRequestBody()
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

graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").UpdatePasswordSingleSignOnCredentials().Post(context.Background(), requestBody, nil)


```