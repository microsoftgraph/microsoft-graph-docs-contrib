---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  grapheducation "github.com/microsoftgraph/msgraph-sdk-go/education"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := grapheducation.NewSetUpFeedbackResourcesFolderPostRequestBody()

result, err := graphClient.Education().Classes().ByClasseId("educationClass-id").Assignments().ByAssignmentId("educationAssignment-id").SetUpFeedbackResourcesFolder().Post(context.Background(), requestBody, nil)


```