---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewLinkedResource_v2()
webUrl := "https://microsoft.com"
requestBody.SetWebUrl(&webUrl) 
applicationName := "Microsoft"
requestBody.SetApplicationName(&applicationName) 
displayName := "Microsoft Web page"
requestBody.SetDisplayName(&displayName) 
externalId := "dk9cddce2-dce2-f9dd-e2dc-cdf9e2dccdf9"
requestBody.SetExternalId(&externalId) 

graphClient.Me().Tasks().ListsById("baseTaskList-id").TasksById("baseTask-id").LinkedResourcesById("linkedResource_v2-id").Patch(context.Background(), requestBody, nil)


```