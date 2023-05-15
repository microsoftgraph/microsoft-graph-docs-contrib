---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewEducationAssignment()
displayName := "Reading and review test 09.03 #5"
requestBody.SetDisplayName(&displayName) 
instructions := graphmodels.NewEducationItemBody()
contentType := graphmodels.TEXT_BODYTYPE 
instructions.SetContentType(&contentType) 
content := "Read chapter 5 and write your review"
instructions.SetContent(&content) 
requestBody.SetInstructions(instructions)
dueDateTime , err := time.Parse(time.RFC3339, "2021-09-10T00:00:00Z")
requestBody.SetDueDateTime(&dueDateTime) 
addedStudentAction := graphmodels.NONE_EDUCATIONADDEDSTUDENTACTION 
requestBody.SetAddedStudentAction(&addedStudentAction) 
addToCalendarAction := graphmodels.STUDENTSANDPUBLISHER_EDUCATIONADDTOCALENDAROPTIONS 
requestBody.SetAddToCalendarAction(&addToCalendarAction) 

result, err := graphClient.Education().Classes().ByClasseId("educationClass-id").Assignments().ByAssignmentId("educationAssignment-id").Patch(context.Background(), requestBody, nil)


```