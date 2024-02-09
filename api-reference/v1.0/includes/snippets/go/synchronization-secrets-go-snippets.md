---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphserviceprincipals "github.com/microsoftgraph/msgraph-sdk-go/serviceprincipals"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphserviceprincipals.NewSecretsPutRequestBody()


synchronizationSecretKeyStringValuePair := graphmodels.NewSynchronizationSecretKeyStringValuePair()
key := graphmodels.BASEADDRESS_SYNCHRONIZATIONSECRET 
synchronizationSecretKeyStringValuePair.SetKey(&key) 
value := "user@domain.com"
synchronizationSecretKeyStringValuePair.SetValue(&value) 
synchronizationSecretKeyStringValuePair1 := graphmodels.NewSynchronizationSecretKeyStringValuePair()
key := graphmodels.SECRETTOKEN_SYNCHRONIZATIONSECRET 
synchronizationSecretKeyStringValuePair1.SetKey(&key) 
value := "password-value"
synchronizationSecretKeyStringValuePair1.SetValue(&value) 
synchronizationSecretKeyStringValuePair2 := graphmodels.NewSynchronizationSecretKeyStringValuePair()
key := graphmodels.SYNCNOTIFICATIONSETTINGS_SYNCHRONIZATIONSECRET 
synchronizationSecretKeyStringValuePair2.SetKey(&key) 
value := "{\"Enabled\":false,\"DeleteThresholdEnabled\":false}"
synchronizationSecretKeyStringValuePair2.SetValue(&value) 
synchronizationSecretKeyStringValuePair3 := graphmodels.NewSynchronizationSecretKeyStringValuePair()
key := graphmodels.SYNCALL_SYNCHRONIZATIONSECRET 
synchronizationSecretKeyStringValuePair3.SetKey(&key) 
value := "false"
synchronizationSecretKeyStringValuePair3.SetValue(&value) 

value := []graphmodels.SynchronizationSecretKeyStringValuePairable {
	synchronizationSecretKeyStringValuePair,
	synchronizationSecretKeyStringValuePair1,
	synchronizationSecretKeyStringValuePair2,
	synchronizationSecretKeyStringValuePair3,
}
requestBody.SetValue(value)

secrets, err := graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").Synchronization().Secrets().Put(context.Background(), requestBody, nil)


```