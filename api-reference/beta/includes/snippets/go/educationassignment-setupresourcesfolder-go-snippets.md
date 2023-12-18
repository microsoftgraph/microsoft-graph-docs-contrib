---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  grapheducation "github.com/microsoftgraph/msgraph-beta-sdk-go/education"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := grapheducation.NewSetUpResourcesFolderPostRequestBody()

setUpResourcesFolder, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").Assignments().ByEducationAssignmentId("educationAssignment-id").SetUpResourcesFolder().Post(context.Background(), requestBody, nil)


```