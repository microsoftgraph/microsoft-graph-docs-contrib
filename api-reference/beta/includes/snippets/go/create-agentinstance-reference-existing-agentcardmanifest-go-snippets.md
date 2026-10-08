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
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewAgentInstance()
id := "Security Copilot Platform Agent: 00222"
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
displayName := "Conditional Access Agent"
requestBody.SetDisplayName(&displayName) 
sourceAgentId := "00222"
requestBody.SetSourceAgentId(&sourceAgentId) 
agentIdentityBlueprintId := "d0108c41-d2d2-4e78-b073-92f57b752bd0"
requestBody.SetAgentIdentityBlueprintId(&agentIdentityBlueprintId) 
agentIdentityId := "dd108c41-d2d2-4e78-b073-92f57b752bd0"
requestBody.SetAgentIdentityId(&agentIdentityId) 
agentUserId := "ee108c41-d2d2-4e78-b073-92f57b752bd0"
requestBody.SetAgentUserId(&agentUserId) 
createdDateTime , err := time.Parse(time.RFC3339, "2025-01-01T00:00:00.1234567Z")
requestBody.SetCreatedDateTime(&createdDateTime) 
lastModifiedDateTime , err := time.Parse(time.RFC3339, "2025-01-01T00:00:00.1234567Z")
requestBody.SetLastModifiedDateTime(&lastModifiedDateTime) 
url := "https://conditional-access-agent.example.com/a2a/v1"
requestBody.SetUrl(&url) 
preferredTransport := "JSONRPC"
requestBody.SetPreferredTransport(&preferredTransport) 


agentInterface := graphmodels.NewAgentInterface()
url := "https://conditional-access-agent.example.com/a2a/v1"
agentInterface.SetUrl(&url) 
transport := "JSONRPC"
agentInterface.SetTransport(&transport) 
agentInterface1 := graphmodels.NewAgentInterface()
url := "https://conditional-access-agent.example.com/a2a/grpc"
agentInterface1.SetUrl(&url) 
transport := "GRPC"
agentInterface1.SetTransport(&transport) 
agentInterface2 := graphmodels.NewAgentInterface()
url := "https://conditional-access-agent.example.com/a2a/json"
agentInterface2.SetUrl(&url) 
transport := "HTTP+JSON"
agentInterface2.SetTransport(&transport) 

additionalInterfaces := []graphmodels.AgentInterfaceable {
	agentInterface,
	agentInterface1,
	agentInterface2,
}
requestBody.SetAdditionalInterfaces(additionalInterfaces)


agentCardSignature := graphmodels.NewAgentCardSignature()
protected := "eyJhbGciOiJFUzI1NiIsImtpZCI6ImRpZDp3ZWI6Y29udG9zby5leGFtcGxlI2tleS0xIiwidHlwIjoiYWdlbnRjYXJkK2p3cyJ9"
agentCardSignature.SetProtected(&protected) 
signature := "xOSim9oMw_CdZM-qDhmwpB5fJcBx5I30yh-FZULd1j9ruPEUBnJzmfCynNfH1KgmJ2B7ulAYc7D2iIb-4Ul-8w"
agentCardSignature.SetSignature(&signature) 
header := graphmodels.NewJwsHeader()
additionalData := map[string]interface{}{
	"kidHint" : "contoso-key-1", 
	"nonce" : "f1e9b6c3-2f3a-4a3a-b604-1f9af3f2a9c0", 
}
header.SetAdditionalData(additionalData)
agentCardSignature.SetHeader(header)

signatures := []graphmodels.AgentCardSignatureable {
	agentCardSignature,
}
requestBody.SetSignatures(signatures)
additionalData := map[string]interface{}{
	"agentCardManifest@odata.bind" : "https://graph.microsoft.com/beta/agentRegistry/agentCardManifests('employee-assistant')", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
agentInstances, err := graphClient.AgentRegistry().AgentInstances().Post(context.Background(), requestBody, nil)


```