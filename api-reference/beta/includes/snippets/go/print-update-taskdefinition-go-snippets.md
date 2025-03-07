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

requestBody := graphmodels.NewPrintTaskDefinition()
displayName := "Test TaskDefinitionName"
requestBody.SetDisplayName(&displayName) 
createdBy := graphmodels.NewAppIdentity()
displayName := "Requesting App Display Name"
createdBy.SetDisplayName(&displayName) 
requestBody.SetCreatedBy(createdBy)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
taskDefinitions, err := graphClient.Print().TaskDefinitions().ByPrintTaskDefinitionId("printTaskDefinition-id").Patch(context.Background(), requestBody, nil)


```