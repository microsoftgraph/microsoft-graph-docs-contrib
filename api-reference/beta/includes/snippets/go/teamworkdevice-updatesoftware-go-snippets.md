---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewUpdateSoftwarePostRequestBody()
softwareType := graphmodels.TEAMSCLIENT_TEAMWORKSOFTWARETYPE 
requestBody.SetSoftwareType(&softwareType) 
softwareVersion := "1.0.96.22"
requestBody.SetSoftwareVersion(&softwareVersion) 

graphClient.Teamwork().DevicesById("teamworkDevice-id").UpdateSoftware().Post(requestBody)


```