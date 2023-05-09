---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewUser()
additionalData := map[string]interface{}{
ext55gb1l09_msLearnCourses := graphmodels.New()
courseType := "Admin"
ext55gb1l09_msLearnCourses.SetCourseType(&courseType) 
	requestBody.SetExt55gb1l09_msLearnCourses(ext55gb1l09_msLearnCourses)
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Users().ByUserId("user-id").Patch(context.Background(), requestBody, nil)


```