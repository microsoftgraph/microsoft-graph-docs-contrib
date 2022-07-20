---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewUpdateAudienceByIdPostRequestBody()
memberEntityType := "String"
requestBody.SetMemberEntityType(&memberEntityType) 
addMembers := []String {
	"String",

}
requestBody.SetAddMembers(addMembers)
removeMembers := []String {
	"String",

}
requestBody.SetRemoveMembers(removeMembers)
addExclusions := []String {
	"String",

}
requestBody.SetAddExclusions(addExclusions)
removeExclusions := []String {
	"String",

}
requestBody.SetRemoveExclusions(removeExclusions)

graphClient.Admin().Windows().Updates().DeploymentsById("deployment-id").Audience().UpdateAudienceById(deployment-id).Post(requestBody)


```