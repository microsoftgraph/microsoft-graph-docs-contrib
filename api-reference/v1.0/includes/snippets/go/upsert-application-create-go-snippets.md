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
	  graphapplications(uniquename='{uniquename}') "github.com/microsoftgraph/msgraph-sdk-go/applications(uniquename='{uniquename}')"
	  //other-imports
)

headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "create-if-missing")

configuration := &graphapplications(uniquename='{uniquename}').Applications(uniqueName='{uniqueName}')RequestBuilderPatchRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewApplication()
displayName := "Display name"
requestBody.SetDisplayName(&displayName) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
uniqueName := "{uniqueName}"
applications, err := graphClient.ApplicationsWithUniqueName(&uniqueName).Patch(context.Background(), requestBody, configuration)


```