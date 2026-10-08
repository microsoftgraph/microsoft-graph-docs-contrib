---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewEducationGradingScheme()
displayName := "PassFailScheme"
requestBody.SetDisplayName(&displayName) 


educationGradingSchemeGrade := graphmodels.NewEducationGradingSchemeGrade()
displayName := "Pass"
educationGradingSchemeGrade.SetDisplayName(&displayName) 
minPercentage := float32(70)
educationGradingSchemeGrade.SetMinPercentage(&minPercentage) 
defaultPercentage := float32(90)
educationGradingSchemeGrade.SetDefaultPercentage(&defaultPercentage) 
educationGradingSchemeGrade1 := graphmodels.NewEducationGradingSchemeGrade()
displayName := "Fail"
educationGradingSchemeGrade1.SetDisplayName(&displayName) 
minPercentage := float32(0)
educationGradingSchemeGrade1.SetMinPercentage(&minPercentage) 
defaultPercentage := float32(50)
educationGradingSchemeGrade1.SetDefaultPercentage(&defaultPercentage) 

grades := []graphmodels.EducationGradingSchemeGradeable {
	educationGradingSchemeGrade,
	educationGradingSchemeGrade1,
}
requestBody.SetGrades(grades)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
gradingSchemes, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").AssignmentSettings().GradingSchemes().Post(context.Background(), requestBody, nil)


```