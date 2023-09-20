---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
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

assignments, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").Assignments().ByEducationAssignmentId("educationAssignment-id").Patch(context.Background(), requestBody, nil)


```