---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelssecurity.NewRetentionEvent()
displayName := "String"
requestBody.SetDisplayName(&displayName) 
description := "String"
requestBody.SetDescription(&description) 


eventQuery := graphmodelssecurity.NewEventQuery()

eventQueries := []graphmodelssecurity.EventQueryable {
	eventQuery,
}
requestBody.SetEventQueries(eventQueries)
eventTriggerDateTime , err := time.Parse(time.RFC3339, "String (timestamp)")
requestBody.SetEventTriggerDateTime(&eventTriggerDateTime) 
createdBy := graphmodels.NewIdentitySet()
requestBody.SetCreatedBy(createdBy)


eventPropagationResult := graphmodelssecurity.NewEventPropagationResult()

eventPropagationResults := []graphmodelssecurity.EventPropagationResultable {
	eventPropagationResult,
}
requestBody.SetEventPropagationResults(eventPropagationResults)
eventStatus := graphmodelssecurity.NewRetentionEventStatus()
requestBody.SetEventStatus(eventStatus)
lastStatusUpdateDateTime , err := time.Parse(time.RFC3339, "String (timestamp)")
requestBody.SetLastStatusUpdateDateTime(&lastStatusUpdateDateTime) 

retentionEvents, err := graphClient.Security().Triggers().RetentionEvents().Post(context.Background(), requestBody, nil)


```