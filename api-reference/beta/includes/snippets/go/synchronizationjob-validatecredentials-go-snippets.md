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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").Synchronization().Jobs().BySynchronizationJobId("synchronizationJob-id").ValidateCredentials().Post(context.Background(), requestBody, nil)


```