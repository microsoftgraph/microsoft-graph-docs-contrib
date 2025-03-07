---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewGroup()
additionalData := map[string]interface{}{
bellowscollege_courses := graph.New()
courseId := "123"
bellowscollege_courses.SetCourseId(&courseId) 
courseName := "New Managers"
bellowscollege_courses.SetCourseName(&courseName) 
courseType := "Online"
bellowscollege_courses.SetCourseType(&courseType) 
	requestBody.SetBellowscollege_courses(bellowscollege_courses)
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
groups, err := graphClient.Groups().ByGroupId("group-id").Patch(context.Background(), requestBody, nil)


```