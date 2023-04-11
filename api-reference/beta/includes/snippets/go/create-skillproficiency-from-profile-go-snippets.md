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
allowedAudiences := graphmodels.ORGANIZATION_ALLOWEDAUDIENCES 
requestBody.SetAllowedAudiences(&allowedAudiences) 
displayName := "API Design"
requestBody.SetDisplayName(&displayName) 
proficiency := graphmodels.GENERALPROFESSIONAL_SKILLPROFICIENCYLEVEL 
requestBody.SetProficiency(&proficiency) 
collaborationTags := []string {
	"ableToMentor",

}
requestBody.SetCollaborationTags(collaborationTags)

result, err := graphClient.Me().Profile().Skills().Post(context.Background(), requestBody, nil)


```