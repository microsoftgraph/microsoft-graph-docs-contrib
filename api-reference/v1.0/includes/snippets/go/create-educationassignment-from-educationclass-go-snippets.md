---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewEducationAssignment()
dueDateTime , err := time.Parse(time.RFC3339, "2022-09-16T00:00:00Z")
requestBody.SetDueDateTime(&dueDateTime) 
displayName := "Reading test 09.14"
requestBody.SetDisplayName(&displayName) 
languageTag := "es-MX"
requestBody.SetLanguageTag(&languageTag) 
instructions := graphmodels.NewEducationItemBody()
contentType := graphmodels.TEXT_BODYTYPE 
instructions.SetContentType(&contentType) 
content := "Read chapter 4"
instructions.SetContent(&content) 
requestBody.SetInstructions(instructions)
grading := graphmodels.NewEducationAssignmentPointsGradeType()
maxPoints := float32(50)
grading.SetMaxPoints(&maxPoints) 
requestBody.SetGrading(grading)
assignTo := graphmodels.NewEducationAssignmentClassRecipient()
requestBody.SetAssignTo(assignTo)
status := graphmodels.DRAFT_EDUCATIONASSIGNMENTSTATUS 
requestBody.SetStatus(&status) 
allowStudentsToAddResourcesToSubmission := true
requestBody.SetAllowStudentsToAddResourcesToSubmission(&allowStudentsToAddResourcesToSubmission) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
assignments, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").Assignments().Post(context.Background(), requestBody, nil)


```