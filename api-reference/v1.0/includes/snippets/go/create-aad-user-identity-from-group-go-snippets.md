---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewIdentity()
id := "e811976d-83df-4cbd-8b9b-5215b18aa874"
requestBody.SetId(&id) 
type := graphmodels.USER_IDENTITYTYPE 
requestBody.SetType(&type) 

result, err := graphClient.External().ConnectionsById("externalConnection-id").GroupsById("externalGroup-id").Members().Post(requestBody)


```