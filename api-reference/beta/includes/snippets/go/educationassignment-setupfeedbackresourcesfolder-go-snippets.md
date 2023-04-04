---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Education/Classes/Item/Assignments/Item/SetUpFeedbackResourcesFolder"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewSetUpFeedbackResourcesFolderPostRequestBody()

result, err := graphClient.Education().ClassesById("educationClass-id").AssignmentsById("educationAssignment-id").SetUpFeedbackResourcesFolder().Post(context.Background(), requestBody, nil)


```