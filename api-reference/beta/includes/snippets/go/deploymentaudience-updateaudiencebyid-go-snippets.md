---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Admin/Windows/Updates/Deployments/Item/Audience/WindowsUpdatesUpdateAudienceById"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewUpdateAudienceByIdPostRequestBody()
memberEntityType := "String"
requestBody.SetMemberEntityType(&memberEntityType) 
addMembers := []string {
	"String",

}
requestBody.SetAddMembers(addMembers)
removeMembers := []string {
	"String",

}
requestBody.SetRemoveMembers(removeMembers)
addExclusions := []string {
	"String",

}
requestBody.SetAddExclusions(addExclusions)
removeExclusions := []string {
	"String",

}
requestBody.SetRemoveExclusions(removeExclusions)

graphClient.Admin().Windows().Updates().Deployments().ByDeploymentId("deployment-id").Audience().WindowsUpdatesUpdateAudienceById().Post(context.Background(), requestBody, nil)


```