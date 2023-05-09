---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewGroup()
additionalData := map[string]interface{}{
graphlearn_courses := graphmodels.New()
courseId := "123"
graphlearn_courses.SetCourseId(&courseId) 
courseName := "New Managers"
graphlearn_courses.SetCourseName(&courseName) 
courseType := "Online"
graphlearn_courses.SetCourseType(&courseType) 
	requestBody.SetGraphlearn_courses(graphlearn_courses)
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Groups().ByGroupId("group-id").Patch(context.Background(), requestBody, nil)


```