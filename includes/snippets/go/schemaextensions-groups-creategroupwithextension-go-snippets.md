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
displayName := "New Managers March 2017"
requestBody.SetDisplayName(&displayName) 
description := "New Managers training course for March 2017"
requestBody.SetDescription(&description) 
groupTypes := []string {
	"Unified",

}
requestBody.SetGroupTypes(groupTypes)
mailEnabled := true
requestBody.SetMailEnabled(&mailEnabled) 
mailNickname := "newMan201703"
requestBody.SetMailNickname(&mailNickname) 
securityEnabled := false
requestBody.SetSecurityEnabled(&securityEnabled) 
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

result, err := graphClient.Groups().Post(context.Background(), requestBody, nil)


```