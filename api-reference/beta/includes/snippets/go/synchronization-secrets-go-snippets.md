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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
secrets, err := graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").Synchronization().Secrets().PutAsSecretsPutResponse(context.Background(), requestBody, nil)


```