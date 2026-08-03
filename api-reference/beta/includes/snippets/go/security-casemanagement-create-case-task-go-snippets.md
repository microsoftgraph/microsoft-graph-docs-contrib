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

requestBody := graphmodelssecuritycasemanagement.NewTask()
displayName := "Validate affected devices"
requestBody.SetDisplayName(&displayName) 
status := graphmodels.NEW_TASKSTATUS 
requestBody.SetStatus(&status) 
description := "Review affected devices and collect evidence"
requestBody.SetDescription(&description) 
assignedTo := "user@contoso.com"
requestBody.SetAssignedTo(&assignedTo) 
closingNotes := "Investigation completed and documented"
requestBody.SetClosingNotes(&closingNotes) 
dueDateTime , err := time.Parse(time.RFC3339, "2026-06-29T17:54:43Z")
requestBody.SetDueDateTime(&dueDateTime) 
priority := graphmodels.HIGH_CASETASKPRIORITY 
requestBody.SetPriority(&priority) 
category := graphmodels.INVESTIGATE_CASETASKCATEGORY 
requestBody.SetCategory(&category) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
tasks, err := graphClient.Security().CaseManagement().Cases().ByCaseId("case-id").Tasks().Post(context.Background(), requestBody, nil)


```