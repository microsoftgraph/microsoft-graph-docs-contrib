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
proficiency := "advancedProfessional"
requestBody.SetProficiency(&proficiency)
options := &msgraphsdk.SkillProficiencyRequestBuilderPatchOptions{
	Body: requestBody,
}
skillProficiencyId := "skillProficiency-id"
graphClient.Me().Profile().SkillsById(&skillProficiencyId).Patch(options);


```