---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelssecuritycasemanagement "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security/casemanagement"
	  //other-imports
)

requestBody := graphmodelssecuritycasemanagement.NewRelation()
relatedResourceId := "987654321"
requestBody.SetRelatedResourceId(&relatedResourceId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
relations, err := graphClient.Security().CaseManagement().Cases().ByCaseId("case-id").Relations().ByRelationId("relation-id").Patch(context.Background(), requestBody, nil)


```