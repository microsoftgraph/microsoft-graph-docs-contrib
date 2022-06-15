---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
memberEntityType := "String"
requestBody.SetMemberEntityType(&memberEntityType)
requestBody.SetAddMembers( []String {
	"String",
}
requestBody.SetRemoveMembers( []String {
	"String",
}
requestBody.SetAddExclusions( []String {
	"String",
}
requestBody.SetRemoveExclusions( []String {
	"String",
}
deploymentId := "deployment-id"
graphClient.Admin().Windows().Updates().DeploymentsById(&deploymentId).Audience().UpdateAudienceById(deployment-id).Post(requestBody)


```