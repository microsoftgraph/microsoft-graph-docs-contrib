---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewRetentionEvent()
"@odata.type" := "#microsoft.graph.security.retentionEvent"
requestBody.Set"@odata.type"(&"@odata.type") 
displayName := "String"
requestBody.SetDisplayName(&displayName) 
description := "String"
requestBody.SetDescription(&description) 


eventQuery := graphmodels.NewEventQuery()
"@odata.type" := "microsoft.graph.security.eventQueries"
eventQuery.Set"@odata.type"(&"@odata.type") 

eventQueries := []graphmodels.EventQueryable {
	eventQuery,

}
requestBody.SetEventQueries(eventQueries)
eventTriggerDateTime , err := time.Parse(time.RFC3339, "String (timestamp)")
requestBody.SetEventTriggerDateTime(&eventTriggerDateTime) 
createdBy := graphmodels.NewIdentitySet()
"@odata.type" := "microsoft.graph.identitySet"
createdBy.Set"@odata.type"(&"@odata.type") 
requestBody.SetCreatedBy(createdBy)


eventPropagationResult := graphmodels.NewEventPropagationResult()
"@odata.type" := "microsoft.graph.security.eventPropagationResult"
eventPropagationResult.Set"@odata.type"(&"@odata.type") 

eventPropagationResults := []graphmodels.EventPropagationResultable {
	eventPropagationResult,

}
requestBody.SetEventPropagationResults(eventPropagationResults)
eventStatus := graphmodels.NewRetentionEventStatus()
"@odata.type" := "microsoft.graph.security.retentionEventStatus"
eventStatus.Set"@odata.type"(&"@odata.type") 
requestBody.SetEventStatus(eventStatus)
lastStatusUpdateDateTime , err := time.Parse(time.RFC3339, "String (timestamp)")
requestBody.SetLastStatusUpdateDateTime(&lastStatusUpdateDateTime) 

result, err := graphClient.Security().Triggers().RetentionEvents().Post(requestBody)


```