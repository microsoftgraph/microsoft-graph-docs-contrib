---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewIncident()
classification := graphmodels.TRUEPOSITIVE_ALERTCLASSIFICATION 
requestBody.SetClassification(&classification) 
determination := graphmodels.MULTISTAGEDATTACK_ALERTDETERMINATION 
requestBody.SetDetermination(&determination) 
customTags := []string {
	"Demo",

}
requestBody.SetCustomTags(customTags)

result, err := graphClient.Security().IncidentsById("incident-id").Patch(context.Background(), requestBody, nil)


```