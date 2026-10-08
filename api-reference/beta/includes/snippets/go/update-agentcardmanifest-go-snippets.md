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

requestBody := graphmodels.NewAgentCardManifest()
ownerIds := []string {
	"String",
}
requestBody.SetOwnerIds(ownerIds)
managedBy := "String"
requestBody.SetManagedBy(&managedBy) 
originatingStore := "String"
requestBody.SetOriginatingStore(&originatingStore) 
createdBy := "String"
requestBody.SetCreatedBy(&createdBy) 
protocolVersion := "String"
requestBody.SetProtocolVersion(&protocolVersion) 
displayName := "String"
requestBody.SetDisplayName(&displayName) 
description := "String"
requestBody.SetDescription(&description) 
iconUrl := "String"
requestBody.SetIconUrl(&iconUrl) 
provider := graphmodels.NewAgentProvider()
requestBody.SetProvider(provider)
version := "String"
requestBody.SetVersion(&version) 
documentationUrl := "String"
requestBody.SetDocumentationUrl(&documentationUrl) 
capabilities := graphmodels.NewAgentCapabilities()
requestBody.SetCapabilities(capabilities)
securitySchemes := graphmodels.NewSecuritySchemes()
requestBody.SetSecuritySchemes(securitySchemes)


securityRequirement := graphmodels.NewSecurityRequirement()

security := []graphmodels.SecurityRequirementable {
	securityRequirement,
}
requestBody.SetSecurity(security)
defaultInputModes := []string {
	"String",
}
requestBody.SetDefaultInputModes(defaultInputModes)
defaultOutputModes := []string {
	"String",
}
requestBody.SetDefaultOutputModes(defaultOutputModes)


agentSkill := graphmodels.NewAgentSkill()

skills := []graphmodels.AgentSkillable {
	agentSkill,
}
requestBody.SetSkills(skills)
supportsAuthenticatedExtendedCard := boolean
requestBody.SetSupportsAuthenticatedExtendedCard(&supportsAuthenticatedExtendedCard) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
agentCardManifests, err := graphClient.AgentRegistry().AgentCardManifests().ByAgentCardManifestId("agentCardManifest-id").Patch(context.Background(), requestBody, nil)


```