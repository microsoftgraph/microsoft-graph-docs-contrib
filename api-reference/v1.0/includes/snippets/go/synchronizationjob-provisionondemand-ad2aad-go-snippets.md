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


requestBody := graphserviceprincipals.NewProvisionOnDemandPostRequestBody()


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

provisionOnDemand, err := graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").Synchronization().Jobs().BySynchronizationJobId("synchronizationJob-id").ProvisionOnDemand().Post(context.Background(), requestBody, nil)


```