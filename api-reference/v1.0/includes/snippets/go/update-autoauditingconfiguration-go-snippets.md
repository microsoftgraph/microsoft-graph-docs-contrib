---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-sdk-go/models/security"
	  //other-imports
)

requestBody := graphmodelssecurity.NewAutoAuditingConfiguration()
isAutomatic := true
requestBody.SetIsAutomatic(&isAutomatic) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
autoAuditingConfiguration, err := graphClient.Security().Identities().Settings().AutoAuditingConfiguration().Patch(context.Background(), requestBody, nil)


```