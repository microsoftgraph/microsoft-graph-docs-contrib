---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewEducationGradingScheme()
displayName := "New name 02"
requestBody.SetDisplayName(&displayName) 


educationGradingSchemeGrade := graphmodels.NewEducationGradingSchemeGrade()
displayName := "Only grade"
educationGradingSchemeGrade.SetDisplayName(&displayName) 
minPercentage := float32(0)
educationGradingSchemeGrade.SetMinPercentage(&minPercentage) 

grades := []graphmodels.EducationGradingSchemeGradeable {
	educationGradingSchemeGrade,
}
requestBody.SetGrades(grades)

gradingSchemes, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").AssignmentSettings().GradingSchemes().Post(context.Background(), requestBody, nil)


```