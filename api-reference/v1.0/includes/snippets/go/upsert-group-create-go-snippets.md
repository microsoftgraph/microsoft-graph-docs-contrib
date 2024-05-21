---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  graphgroups(uniquename='{uniquename}') "github.com/microsoftgraph/msgraph-sdk-go/groups(uniquename='{uniquename}')"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
uniqueName := "{uniqueName}"
groups, err := graphClient.GroupsWithUniqueName(&uniqueName).Patch(context.Background(), requestBody, configuration)


```