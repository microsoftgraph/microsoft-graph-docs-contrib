---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewSkillProficiency()
requestBody.SetCategories( []String {
	"Professional",
}
allowedAudiences := "organization"
requestBody.SetAllowedAudiences(&allowedAudiences)
displayName := "API Design"
requestBody.SetDisplayName(&displayName)
proficiency := "generalProfessional"
requestBody.SetProficiency(&proficiency)
requestBody.SetCollaborationTags( []String {
	"ableToMentor",
}
options := &msgraphsdk.SkillsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Me().Profile().Skills().Post(options)


```