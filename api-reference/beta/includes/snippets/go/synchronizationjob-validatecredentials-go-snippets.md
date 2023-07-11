---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphserviceprincipals "github.com/microsoftgraph/msgraph-beta-sdk-go/serviceprincipals"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphserviceprincipals.NewValidateCredentialsPostRequestBody()


synchronizationSecretKeyStringValuePair := graphmodels.NewSynchronizationSecretKeyStringValuePair()
key := graphmodels.USERNAME_SYNCHRONIZATIONSECRET 
synchronizationSecretKeyStringValuePair.SetKey(&key) 
value := "user@domain.com"
synchronizationSecretKeyStringValuePair.SetValue(&value) 
synchronizationSecretKeyStringValuePair1 := graphmodels.NewSynchronizationSecretKeyStringValuePair()
key := graphmodels.PASSWORD_SYNCHRONIZATIONSECRET 
synchronizationSecretKeyStringValuePair1.SetKey(&key) 
value := "password-value"
synchronizationSecretKeyStringValuePair1.SetValue(&value) 

credentials := []graphmodels.SynchronizationSecretKeyStringValuePairable {
	synchronizationSecretKeyStringValuePair,
	synchronizationSecretKeyStringValuePair1,
}
requestBody.SetCredentials(credentials)

graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").Synchronization().Jobs().ByJobId("synchronizationJob-id").ValidateCredentials().Post(context.Background(), requestBody, nil)


```