---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewParametersRequestBody()
requestBody.SetParameters( []SynchronizationJobApplicationParameters {
	msgraphsdk.NewSynchronizationJobApplicationParameters(),
	SetSubjects( []SynchronizationJobSubject {
		msgraphsdk.NewSynchronizationJobSubject(),
objectId := "9bb0f679-a883-4a6f-8260-35b491b8b8c8"
		SetObjectId(&objectId)
objectTypeName := "User"
		SetObjectTypeName(&objectTypeName)
	}
ruleId := "ea807875-5618-4f0a-9125-0b46a05298ca"
	SetRuleId(&ruleId)
}
servicePrincipalId := "servicePrincipal-id"
synchronizationJobId := "synchronizationJob-id"
result, err := graphClient.ServicePrincipalsById(&servicePrincipalId).Synchronization().JobsById(&synchronizationJobId).ProvisionOnDemand(servicePrincipal-id, synchronizationJob-id).Post(requestBody)


```