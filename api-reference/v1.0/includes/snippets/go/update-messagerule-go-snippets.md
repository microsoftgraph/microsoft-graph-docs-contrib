---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewMessageRule()
displayName := "Important from partner"
requestBody.SetDisplayName(&displayName) 
actions := graphmodels.NewMessageRuleActions()
markImportance := graphmodels.HIGH_IMPORTANCE 
actions.SetMarkImportance(&markImportance) 
requestBody.SetActions(actions)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
messageRules, err := graphClient.Me().MailFolders().ByMailFolderId("mailFolder-id").MessageRules().ByMessageRuleId("messageRule-id").Patch(context.Background(), requestBody, nil)


```