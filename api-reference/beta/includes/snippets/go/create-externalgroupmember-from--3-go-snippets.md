---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewIdentity()
id := "1431b9c38ee647f6a"
requestBody.SetId(&id) 
type := graphmodels.EXTERNALGROUP_IDENTITYTYPE 
requestBody.SetType(&type) 

result, err := graphClient.External().ConnectionsById("externalConnection-id").GroupsById("externalGroup-id").Members().Post(requestBody)


```