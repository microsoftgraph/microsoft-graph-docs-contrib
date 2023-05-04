---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewSkillProficiency()
categories := []string {
	"Professional",

}
requestBody.SetCategories(categories)
proficiency := graphmodels.ADVANCEDPROFESSIONAL_SKILLPROFICIENCYLEVEL 
requestBody.SetProficiency(&proficiency) 

result, err := graphClient.Me().Profile().Skills().BySkillId("skillProficiency-id").Patch(context.Background(), requestBody, nil)


```