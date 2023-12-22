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



graphClient.Education().Schools().ByEducationSchoolId("educationSchool-id").Users().ByEducationUserId("educationUser-id").Ref().Delete(context.Background(), nil)


```