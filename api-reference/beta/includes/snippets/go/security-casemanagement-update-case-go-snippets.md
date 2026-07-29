---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelssecuritycasemanagement "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security/casemanagement"
	  //other-imports
)

requestBody := graphmodelssecuritycasemanagement.NewCase()
displayName := "Case MS-001"
requestBody.SetDisplayName(&displayName) 
status := "Open"
requestBody.SetStatus(&status) 
description := "Investigating potential credential compromise."
requestBody.SetDescription(&description) 
assignedTo := "john.doe@contoso.com"
requestBody.SetAssignedTo(&assignedTo) 
priority := "high"
requestBody.SetPriority(&priority) 
dueDateTime , err := time.Parse(time.RFC3339, "2026-06-29T17:54:43Z")
requestBody.SetDueDateTime(&dueDateTime) 
closingNotes := "Follow up with the account owner."
requestBody.SetClosingNotes(&closingNotes) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
cases, err := graphClient.Security().CaseManagement().Cases().ByCaseId("case-id").Patch(context.Background(), requestBody, nil)


```