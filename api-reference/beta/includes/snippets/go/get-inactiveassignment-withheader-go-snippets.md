---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  grapheducation "github.com/microsoftgraph/msgraph-beta-sdk-go/education"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "include-unknown-enum-members")

configuration := &grapheducation.EducationClasseItemAssignmentItemRequestBuilderGetRequestConfiguration{
	Headers: headers,
}

result, err := graphClient.Education().Classes().ByClasseId("educationClass-id").Assignments().ByAssignmentId("educationAssignment-id").Get(context.Background(), configuration)


```