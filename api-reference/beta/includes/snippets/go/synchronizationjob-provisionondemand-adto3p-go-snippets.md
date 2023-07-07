---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphserviceprincipals "github.com/microsoftgraph/msgraph-beta-sdk-go/serviceprincipals"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphserviceprincipals.NewProvisionOnDemandPostRequestBody()


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