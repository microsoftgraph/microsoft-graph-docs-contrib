---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



administrativeUnit, err := graphClient.Education().Schools().ByEducationSchoolId("educationSchool-id").AdministrativeUnit().Get(context.Background(), nil)


```