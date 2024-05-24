---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewUser()
additionalData := map[string]interface{}{
extkmpdyld2_graphLearnCourses := graph.New()
courseType := "Instructor-led"
extkmpdyld2_graphLearnCourses.SetCourseType(&courseType) 
	courseId := null
extkmpdyld2_graphLearnCourses.SetCourseId(&courseId) 
	requestBody.SetExtkmpdyld2_graphLearnCourses(extkmpdyld2_graphLearnCourses)
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
users, err := graphClient.Users().ByUserId("user-id").Patch(context.Background(), requestBody, nil)


```