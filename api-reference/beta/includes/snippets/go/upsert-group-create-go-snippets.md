---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  graphgroups(uniquename='{uniquename}') "github.com/microsoftgraph/msgraph-beta-sdk-go/groups(uniquename='{uniquename}')"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "create-if-missing")

configuration := &graphgroups(uniquename='{uniquename}').Groups(uniqueName='{uniqueName}')RequestBuilderPatchRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewGroup()
description := "Self help community for golf"
requestBody.SetDescription(&description) 
displayName := "Golf Assist"
requestBody.SetDisplayName(&displayName) 
groupTypes := []string {
	"Unified",
}
requestBody.SetGroupTypes(groupTypes)
mailEnabled := true
requestBody.SetMailEnabled(&mailEnabled) 
mailNickname := "golfassist"
requestBody.SetMailNickname(&mailNickname) 
securityEnabled := false
requestBody.SetSecurityEnabled(&securityEnabled) 

uniqueName := "{uniqueName}"
groups, err := graphClient.GroupsWithUniqueName(&uniqueName).Patch(context.Background(), requestBody, configuration)


```