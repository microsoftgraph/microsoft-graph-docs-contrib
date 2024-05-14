---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  graphapplications(uniquename='{uniquename}') "github.com/microsoftgraph/msgraph-beta-sdk-go/applications(uniquename='{uniquename}')"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "create-if-missing")

configuration := &graphapplications(uniquename='{uniquename}').Applications(uniqueName='{uniqueName}')RequestBuilderPatchRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewApplication()
displayName := "Display name"
requestBody.SetDisplayName(&displayName) 

uniqueName := "{uniqueName}"
applications, err := graphClient.ApplicationsWithUniqueName(&uniqueName).Patch(context.Background(), requestBody, configuration)


```