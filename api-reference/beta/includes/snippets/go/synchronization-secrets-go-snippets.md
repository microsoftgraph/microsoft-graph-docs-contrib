---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/ServicePrincipals/Item/Synchronization/Secrets"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewSynchronizationSecretKeyStringValuePair()
additionalData := map[string]interface{}{


 := graphmodels.New()
key := "BaseAddress"
.SetKey(&key) 
value := "user@domain.com"
.SetValue(&value) 
 := graphmodels.New()
key := "SecretToken"
.SetKey(&key) 
value := "password-value"
.SetValue(&value) 
 := graphmodels.New()
key := "SyncNotificationSettings"
.SetKey(&key) 
value := "{\"Enabled\":false,\"DeleteThresholdEnabled\":false}"
.SetValue(&value) 
 := graphmodels.New()
key := "SyncAll"
.SetKey(&key) 
value := "false"
.SetValue(&value) 

	value := []graphmodels.Objectable {
		,
		,
		,
		,

	}
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").Synchronization().Secrets().Put(context.Background(), requestBody, nil)


```