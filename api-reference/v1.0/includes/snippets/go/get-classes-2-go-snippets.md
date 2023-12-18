---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



classes, err := graphClient.Education().Schools().ByEducationSchoolId("educationSchool-id").Classes().Get(context.Background(), nil)


```