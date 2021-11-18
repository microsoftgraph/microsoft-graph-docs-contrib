---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
requestBody.SetParameters( []SynchronizationJobApplicationParameters {
	msgraphsdk.NewSynchronizationJobApplicationParameters(),
	SetAdditionalData(map[string]interface{}{
		"subjects":  []Object {
		}
		"ruleId": "ea807875-5618-4f0a-9125-0b46a05298ca",
	}
}
options := &msgraphsdk.ProvisionOnDemandRequestBuilderPostOptions{
	Body: requestBody,
}
servicePrincipalId := "servicePrincipal-id"
synchronizationJobId := "synchronizationJob-id"
result, err := graphClient.ServicePrincipalsById(&servicePrincipalId).Synchronization().JobsById(&synchronizationJobId).ProvisionOnDemand().Post(options)


```