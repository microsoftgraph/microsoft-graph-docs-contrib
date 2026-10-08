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

requestBody := graphmodelssecuritycasemanagement.NewAttachment()
displayName := "Case MS-001 Attachment"
requestBody.SetDisplayName(&displayName) 
description := "Screenshot of suspicious sign-in activity"
requestBody.SetDescription(&description) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
attachments, err := graphClient.Security().CaseManagement().Cases().ByCaseId("case-id").Attachments().ByAttachmentId("attachment-id").Patch(context.Background(), requestBody, nil)


```