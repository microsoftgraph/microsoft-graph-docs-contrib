---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewParametersRequestBody()
requestBody.SetParameters( []SynchronizationJobApplicationParameters {
	msgraphsdk.NewSynchronizationJobApplicationParameters(),
ruleId := "6c409270-f78a-4bc6-af23-7cf3ab6482fe"
	SetRuleId(&ruleId)
	SetSubjects( []SynchronizationJobSubject {
		msgraphsdk.NewSynchronizationJobSubject(),
objectId := "CN=AdeleV,CN=Users,DC=corp,DC=chicago,DC=com"
		SetObjectId(&objectId)
objectTypeName := "user"
		SetObjectTypeName(&objectTypeName)
	}
}
servicePrincipalId := "servicePrincipal-id"
synchronizationJobId := "synchronizationJob-id"
result, err := graphClient.ServicePrincipalsById(&servicePrincipalId).Synchronization().JobsById(&synchronizationJobId).ProvisionOnDemand(servicePrincipal-id, synchronizationJob-id).Post(requestBody)


```