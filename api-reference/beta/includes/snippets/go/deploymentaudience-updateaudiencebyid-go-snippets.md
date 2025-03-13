---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphadmin "github.com/microsoftgraph/msgraph-beta-sdk-go/admin"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Admin().Windows().Updates().Deployments().ByDeploymentId("deployment-id").Audience().MicrosoftGraphWindowsUpdatesUpdateAudienceById().Post(context.Background(), requestBody, nil)


```