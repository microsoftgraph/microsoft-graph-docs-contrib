---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAddActivitiesPostRequestBody()


externalActivity := graphmodels.NewExternalActivity()
"@odata.type" := "#microsoft.graph.externalConnectors.externalActivity"
externalActivity.Set"@odata.type"(&"@odata.type") 
type := graphmodels.STRING_EXTERNALACTIVITYTYPE 
externalActivity.SetType(&type) 
startDateTime , err := time.Parse(time.RFC3339, "String (timestamp)")
externalActivity.SetStartDateTime(&startDateTime) 

activities := []graphmodels.ExternalActivityable {
	externalActivity,

}
requestBody.SetActivities(activities)

result, err := graphClient.ConnectionsById("externalConnection-id").ItemsById("externalItem-id").AddActivities().Post(requestBody)


```