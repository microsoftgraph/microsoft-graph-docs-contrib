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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
gradingSchemes, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").AssignmentSettings().GradingSchemes().Post(context.Background(), requestBody, nil)


```