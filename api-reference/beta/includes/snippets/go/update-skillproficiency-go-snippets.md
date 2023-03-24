---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewSkillProficiency()
categories := []string {
	"Professional",

}
requestBody.SetCategories(categories)
proficiency := graphmodels.ADVANCEDPROFESSIONAL_SKILLPROFICIENCYLEVEL 
requestBody.SetProficiency(&proficiency) 

result, err := graphClient.Me().Profile().SkillsById("skillProficiency-id").Patch(context.Background(), requestBody, nil)


```