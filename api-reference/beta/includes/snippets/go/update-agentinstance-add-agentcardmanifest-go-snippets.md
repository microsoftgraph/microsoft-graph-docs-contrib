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

requestBody := graphmodels.NewAgentInstance()
agentCardManifest := graphmodels.NewAgentCardManifest()
ownerIds := []string {
	"0ef68a76-e247-41dd-947b-41282760a2ac",
}
agentCardManifest.SetOwnerIds(ownerIds)
originatingStore := "Copilot Studio"
agentCardManifest.SetOriginatingStore(&originatingStore) 
displayName := "Conditional Access Agent Card"
agentCardManifest.SetDisplayName(&displayName) 
description := "Manages organizational conditional access policies"
agentCardManifest.SetDescription(&description) 
iconUrl := "https://example.com/icon.png"
agentCardManifest.SetIconUrl(&iconUrl) 
provider := graphmodels.NewAgentProvider()
organization := "Test Organization"
provider.SetOrganization(&organization) 
url := "https://contoso.com"
provider.SetUrl(&url) 
agentCardManifest.SetProvider(provider)
protocolVersion := "1.0"
agentCardManifest.SetProtocolVersion(&protocolVersion) 
version := "1.0.0"
agentCardManifest.SetVersion(&version) 
documentationUrl := "https://example.com/docs"
agentCardManifest.SetDocumentationUrl(&documentationUrl) 
capabilities := graphmodels.NewAgentCapabilities()
streaming := false
capabilities.SetStreaming(&streaming) 
pushNotifications := false
capabilities.SetPushNotifications(&pushNotifications) 
stateTransitionHistory := true
capabilities.SetStateTransitionHistory(&stateTransitionHistory) 


agentExtension := graphmodels.NewAgentExtension()
uri := "https://contoso.example.com/a2a/capabilities/secureMessaging"
agentExtension.SetUri(&uri) 
description := null
agentExtension.SetDescription(&description) 
required := false
agentExtension.SetRequired(&required) 
params := graphmodels.NewAgentExtensionParams()
additionalData := map[string]interface{}{
	useHttps := true
params.SetUseHttps(&useHttps) 
}
params.SetAdditionalData(additionalData)
agentExtension.SetParams(params)

extensions := []graphmodels.AgentExtensionable {
	agentExtension,
}
capabilities.SetExtensions(extensions)
agentCardManifest.SetCapabilities(capabilities)
defaultInputModes := []string {
	"application/json",
}
agentCardManifest.SetDefaultInputModes(defaultInputModes)
defaultOutputModes := []string {
	"application/json",
	"text/html",
}
agentCardManifest.SetDefaultOutputModes(defaultOutputModes)
supportsAuthenticatedExtendedCard := true
agentCardManifest.SetSupportsAuthenticatedExtendedCard(&supportsAuthenticatedExtendedCard) 


agentSkill := graphmodels.NewAgentSkill()
id := "threat-detection"
agentSkill.SetId(&id) 
displayName := "Threat Detection"
agentSkill.SetDisplayName(&displayName) 
description := "Detect security threats in real-time"
agentSkill.SetDescription(&description) 
tags := []string {
	"security",
	"threat",
	"detection",
}
agentSkill.SetTags(tags)
examples := []string {
	"Analyze this log for threats",
	"Check for malware",
}
agentSkill.SetExamples(examples)
inputModes := []string {
	"application/json",
	"text/plain",
}
agentSkill.SetInputModes(inputModes)
outputModes := []string {
	"application/json",
	"text/html",
}
agentSkill.SetOutputModes(outputModes)

skills := []graphmodels.AgentSkillable {
	agentSkill,
}
agentCardManifest.SetSkills(skills)
requestBody.SetAgentCardManifest(agentCardManifest)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
agentInstances, err := graphClient.AgentRegistry().AgentInstances().ByAgentInstanceId("agentInstance-id").Patch(context.Background(), requestBody, nil)


```