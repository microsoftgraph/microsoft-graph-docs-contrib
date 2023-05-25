---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/education"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphconfig.EducationUserItemAssignmentsRequestBuilderGetQueryParameters{
	Expand: [] string {"submissions"},
}
configuration := &graphconfig.EducationUserItemAssignmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Education().Users().ByUserId("educationUser-id").Assignments().Get(context.Background(), configuration)


```