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
ruleId := "6c409270-f78a-4bc6-af23-7cf3ab6482fe"
synchronizationJobApplicationParameters.SetRuleId(&ruleId) 


synchronizationJobSubject := graphmodels.NewSynchronizationJobSubject()
objectId := "CN=AdeleV,CN=Users,DC=corp,DC=chicago,DC=com"
synchronizationJobSubject.SetObjectId(&objectId) 
objectTypeName := "user"
synchronizationJobSubject.SetObjectTypeName(&objectTypeName) 

subjects := []graphmodels.SynchronizationJobSubjectable {
	synchronizationJobSubject,

}
synchronizationJobApplicationParameters.SetSubjects(subjects)

parameters := []graphmodels.SynchronizationJobApplicationParametersable {
	synchronizationJobApplicationParameters,

}
requestBody.SetParameters(parameters)

result, err := graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").Synchronization().Jobs().ByJobId("synchronizationJob-id").ProvisionOnDemand().Post(context.Background(), requestBody, nil)


```