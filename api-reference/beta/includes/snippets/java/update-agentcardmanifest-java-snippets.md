---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AgentCardManifest agentCardManifest = new AgentCardManifest();
agentCardManifest.setOdataType("#microsoft.graph.agentCardManifest");
LinkedList<String> ownerIds = new LinkedList<String>();
ownerIds.add("String");
agentCardManifest.setOwnerIds(ownerIds);
agentCardManifest.setManagedBy("String");
agentCardManifest.setOriginatingStore("String");
agentCardManifest.setCreatedBy("String");
agentCardManifest.setProtocolVersion("String");
agentCardManifest.setDisplayName("String");
agentCardManifest.setDescription("String");
agentCardManifest.setIconUrl("String");
AgentProvider provider = new AgentProvider();
provider.setOdataType("microsoft.graph.agentProvider");
agentCardManifest.setProvider(provider);
agentCardManifest.setVersion("String");
agentCardManifest.setDocumentationUrl("String");
AgentCapabilities capabilities = new AgentCapabilities();
capabilities.setOdataType("microsoft.graph.agentCapabilities");
agentCardManifest.setCapabilities(capabilities);
SecuritySchemes securitySchemes = new SecuritySchemes();
securitySchemes.setOdataType("microsoft.graph.securitySchemes");
agentCardManifest.setSecuritySchemes(securitySchemes);
LinkedList<SecurityRequirement> security = new LinkedList<SecurityRequirement>();
SecurityRequirement securityRequirement = new SecurityRequirement();
securityRequirement.setOdataType("microsoft.graph.securityRequirement");
security.add(securityRequirement);
agentCardManifest.setSecurity(security);
LinkedList<String> defaultInputModes = new LinkedList<String>();
defaultInputModes.add("String");
agentCardManifest.setDefaultInputModes(defaultInputModes);
LinkedList<String> defaultOutputModes = new LinkedList<String>();
defaultOutputModes.add("String");
agentCardManifest.setDefaultOutputModes(defaultOutputModes);
LinkedList<AgentSkill> skills = new LinkedList<AgentSkill>();
AgentSkill agentSkill = new AgentSkill();
agentSkill.setOdataType("microsoft.graph.agentSkill");
skills.add(agentSkill);
agentCardManifest.setSkills(skills);
agentCardManifest.setSupportsAuthenticatedExtendedCard(boolean);
AgentCardManifest result = graphClient.agentRegistry().agentCardManifests().byAgentCardManifestId("{agentCardManifest-id}").patch(agentCardManifest);


```