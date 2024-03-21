---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphadmin "github.com/microsoftgraph/msgraph-beta-sdk-go/admin"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphadmin.NewUpdateAudienceByIdPostRequestBody()
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

graphClient.Admin().Windows().Updates().Deployments().ByDeploymentId("deployment-id").Audience().MicrosoftGraphWindowsUpdatesUpdateAudienceById().Post(context.Background(), requestBody, nil)


```