---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewEducationClass()
displayName := "String"
requestBody.SetDisplayName(&displayName)
mailNickname := "String"
requestBody.SetMailNickname(&mailNickname)
description := "String"
requestBody.SetDescription(&description)
createdBy := msgraphsdk.NewIdentitySet()
requestBody.SetCreatedBy(createdBy)
createdBy.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.identitySet",
}
classCode := "String"
requestBody.SetClassCode(&classCode)
externalName := "String"
requestBody.SetExternalName(&externalName)
externalId := "String"
requestBody.SetExternalId(&externalId)
externalSource := "String"
requestBody.SetExternalSource(&externalSource)
externalSourceDetail := "String"
requestBody.SetExternalSourceDetail(&externalSourceDetail)
grade := "String"
requestBody.SetGrade(&grade)
term := msgraphsdk.NewEducationTerm()
requestBody.SetTerm(term)
term.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.educationTerm",
}
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.educationClass",
}
options := &msgraphsdk.ClassesRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Education().Classes().Post(options)


```