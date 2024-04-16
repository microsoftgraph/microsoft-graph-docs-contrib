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


requestBody := graphmodels.NewEducationAssignmentSettings()


educationGradingScheme := graphmodels.NewEducationGradingScheme()
displayName := "Pass/fail"
educationGradingScheme.SetDisplayName(&displayName) 


educationGradingSchemeGrade := graphmodels.NewEducationGradingSchemeGrade()
displayName := "Pass"
educationGradingSchemeGrade.SetDisplayName(&displayName) 
minPercentage := float32(60)
educationGradingSchemeGrade.SetMinPercentage(&minPercentage) 
defaultPercentage := float32(100)
educationGradingSchemeGrade.SetDefaultPercentage(&defaultPercentage) 
educationGradingSchemeGrade1 := graphmodels.NewEducationGradingSchemeGrade()
displayName := "Fail"
educationGradingSchemeGrade1.SetDisplayName(&displayName) 
minPercentage := float32(0)
educationGradingSchemeGrade1.SetMinPercentage(&minPercentage) 
defaultPercentage := float32(0)
educationGradingSchemeGrade1.SetDefaultPercentage(&defaultPercentage) 

grades := []graphmodels.EducationGradingSchemeGradeable {
	educationGradingSchemeGrade,
	educationGradingSchemeGrade1,
}
educationGradingScheme.SetGrades(grades)
educationGradingScheme1 := graphmodels.NewEducationGradingScheme()
displayName := "Letters"
educationGradingScheme1.SetDisplayName(&displayName) 


educationGradingSchemeGrade := graphmodels.NewEducationGradingSchemeGrade()
displayName := "A"
educationGradingSchemeGrade.SetDisplayName(&displayName) 
minPercentage := float32(90)
educationGradingSchemeGrade.SetMinPercentage(&minPercentage) 
educationGradingSchemeGrade1 := graphmodels.NewEducationGradingSchemeGrade()
displayName := "B"
educationGradingSchemeGrade1.SetDisplayName(&displayName) 
minPercentage := float32(80)
educationGradingSchemeGrade1.SetMinPercentage(&minPercentage) 
educationGradingSchemeGrade2 := graphmodels.NewEducationGradingSchemeGrade()
displayName := "C"
educationGradingSchemeGrade2.SetDisplayName(&displayName) 
minPercentage := float32(70)
educationGradingSchemeGrade2.SetMinPercentage(&minPercentage) 
educationGradingSchemeGrade3 := graphmodels.NewEducationGradingSchemeGrade()
displayName := "D"
educationGradingSchemeGrade3.SetDisplayName(&displayName) 
minPercentage := float32(60)
educationGradingSchemeGrade3.SetMinPercentage(&minPercentage) 
educationGradingSchemeGrade4 := graphmodels.NewEducationGradingSchemeGrade()
displayName := "F"
educationGradingSchemeGrade4.SetDisplayName(&displayName) 
minPercentage := float32(0)
educationGradingSchemeGrade4.SetMinPercentage(&minPercentage) 

grades := []graphmodels.EducationGradingSchemeGradeable {
	educationGradingSchemeGrade,
	educationGradingSchemeGrade1,
	educationGradingSchemeGrade2,
	educationGradingSchemeGrade3,
	educationGradingSchemeGrade4,
}
educationGradingScheme1.SetGrades(grades)

gradingSchemes := []graphmodels.EducationGradingSchemeable {
	educationGradingScheme,
	educationGradingScheme1,
}
requestBody.SetGradingSchemes(gradingSchemes)

assignmentSettings, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").AssignmentSettings().Patch(context.Background(), requestBody, nil)


```