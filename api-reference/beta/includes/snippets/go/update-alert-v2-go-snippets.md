---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAlert()
assignedTo := "secAdmin@contoso.onmicrosoft.com"
requestBody.SetAssignedTo(&assignedTo) 
classification := graphmodels.TRUEPOSITIVE_ALERTCLASSIFICATION 
requestBody.SetClassification(&classification) 
determination := graphmodels.MALWARE_ALERTDETERMINATION 
requestBody.SetDetermination(&determination) 
status := graphmodels.INPROGRESS_ALERTSTATUS 
requestBody.SetStatus(&status) 

graphClient.Security().Alerts_v2ById("alert-id").Patch(requestBody)


```