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

requestBody := graphmodels.NewEducationModule()
displayName := "New_Module5 updated"
requestBody.SetDisplayName(&displayName) 
languageTag := "en-GB"
requestBody.SetLanguageTag(&languageTag) 
description := "updated for description"
requestBody.SetDescription(&description) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
modules, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").Modules().ByEducationModuleId("educationModule-id").Patch(context.Background(), requestBody, nil)


```