---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewIdentity()
id := "e5477431-1038-484e-bf69-1dfedb97a110"
requestBody.SetId(&id) 
type := graphmodels.GROUP_IDENTITYTYPE 
requestBody.SetType(&type) 

result, err := graphClient.External().ConnectionsById("externalConnection-id").GroupsById("externalGroup-id").Members().Post(requestBody)


```