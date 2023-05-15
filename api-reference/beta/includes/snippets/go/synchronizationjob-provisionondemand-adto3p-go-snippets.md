---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/ServicePrincipals/Item/Synchronization/Jobs/Item/ProvisionOnDemand"
	  //other-imports
)

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

result, err := graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").Synchronization().Jobs().ByJobId("synchronizationJob-id").ProvisionOnDemand().Post(context.Background(), requestBody, nil)


```