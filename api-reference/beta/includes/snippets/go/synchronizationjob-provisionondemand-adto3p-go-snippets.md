---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewProvisionOnDemandPostRequestBody()


synchronizationJobApplicationParameters := graphmodels.NewSynchronizationJobApplicationParameters()


synchronizationJobSubject := graphmodels.NewSynchronizationJobSubject()
objectId := "9bb0f679-a883-4a6f-8260-35b491b8b8c8"
synchronizationJobSubject.SetObjectId(&objectId) 
objectTypeName := "User"
synchronizationJobSubject.SetObjectTypeName(&objectTypeName) 

subjects := []graphmodels.SynchronizationJobSubjectable {
	synchronizationJobSubject,

}
synchronizationJobApplicationParameters.SetSubjects(subjects)
ruleId := "ea807875-5618-4f0a-9125-0b46a05298ca"
synchronizationJobApplicationParameters.SetRuleId(&ruleId) 

parameters := []graphmodels.SynchronizationJobApplicationParametersable {
	synchronizationJobApplicationParameters,

}
requestBody.SetParameters(parameters)

result, err := graphClient.ServicePrincipalsById("servicePrincipal-id").Synchronization().JobsById("synchronizationJob-id").ProvisionOnDemand().Post(context.Background(), requestBody, nil)


```