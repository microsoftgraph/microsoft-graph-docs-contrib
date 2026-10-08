---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelssecuritysecuritycopilot "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security/securitycopilot"
	  //other-imports
)

requestBody := graphmodelssecuritysecuritycopilot.NewEvaluation()

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
evaluations, err := graphClient.Security().SecurityCopilot().Workspaces().ByWorkspaceId("workspace-id").Sessions().BySessionId("session-id").Prompts().ByPromptId("prompt-id").Evaluations().Post(context.Background(), requestBody, nil)


```