---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/security"
	  //other-imports
)


requestFilter := "name eq 'Entra'"

requestParameters := &graphsecurity.SecurityCopilotWorkspacesItemPluginsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphsecurity.SecurityCopilotWorkspacesItemPluginsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
plugins, err := graphClient.Security().SecurityCopilot().Workspaces().ByWorkspaceId("workspace-id").Plugins().Get(context.Background(), configuration)


```