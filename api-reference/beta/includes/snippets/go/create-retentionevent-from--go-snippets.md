---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewRetentionEvent()
displayName := "String"
requestBody.SetDisplayName(&displayName) 
description := "String"
requestBody.SetDescription(&description) 


eventQuery := graphmodels.NewEventQuery()

eventQueries := []graphmodels.EventQueryable {
	eventQuery,

}
requestBody.SetEventQueries(eventQueries)
eventTriggerDateTime , err := time.Parse(time.RFC3339, "String (timestamp)")
requestBody.SetEventTriggerDateTime(&eventTriggerDateTime) 
createdBy := graphmodels.NewIdentitySet()
requestBody.SetCreatedBy(createdBy)


eventPropagationResult := graphmodels.NewEventPropagationResult()

eventPropagationResults := []graphmodels.EventPropagationResultable {
	eventPropagationResult,

}
requestBody.SetEventPropagationResults(eventPropagationResults)
eventStatus := graphmodels.NewRetentionEventStatus()
requestBody.SetEventStatus(eventStatus)
lastStatusUpdateDateTime , err := time.Parse(time.RFC3339, "String (timestamp)")
requestBody.SetLastStatusUpdateDateTime(&lastStatusUpdateDateTime) 

result, err := graphClient.Security().Triggers().RetentionEvents().Post(requestBody)


```