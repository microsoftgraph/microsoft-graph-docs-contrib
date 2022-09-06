---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewIncident()
classification := graphmodels.TRUEPOSITIVE_ALERTCLASSIFICATION 
requestBody.SetClassification(&classification) 
determination := graphmodels.MULTISTAGEDATTACK_ALERTDETERMINATION 
requestBody.SetDetermination(&determination) 
tags := []string {
	"Demo",

}
requestBody.SetTags(tags)

graphClient.Security().IncidentsById("incident-id").Patch(requestBody)


```