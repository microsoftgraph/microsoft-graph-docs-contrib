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


requestParameters := &grapheducation.EducationClasseItemAssignmentSettingsRequestBuilderGetQueryParameters{
	Expand: [] string {"defaultGradingScheme"},
}
configuration := &grapheducation.EducationClasseItemAssignmentSettingsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

assignmentSettings, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").AssignmentSettings().Get(context.Background(), configuration)


```