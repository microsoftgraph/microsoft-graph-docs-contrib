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

requestBody := graphmodels.NewAgentCollection()
id := "Security Copilot Platform Workspace: 001"
requestBody.SetId(&id) 
ownerIds := []string {
	"daf58b0e-44e1-433c-b6b0-ca70cae320b8",
	"b9108c41-d2d2-4e78-b073-92f57b752bd0",
}
requestBody.SetOwnerIds(ownerIds)
managedBy := "719cc904-9700-4e08-9941-fd826cc84c60"
requestBody.SetManagedBy(&managedBy) 
originatingStore := "Microsoft Security Copilot"
requestBody.SetOriginatingStore(&originatingStore) 
createdBy := "d47bffae-411a-4de9-8548-05e79bc01f0d"
requestBody.SetCreatedBy(&createdBy) 
displayName := "Conditional Access Agents"
requestBody.SetDisplayName(&displayName) 
description := "A collection of agents to manage your organizations conditional access policies"
requestBody.SetDescription(&description) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
agentCollections, err := graphClient.AgentRegistry().AgentCollections().Post(context.Background(), requestBody, nil)


```