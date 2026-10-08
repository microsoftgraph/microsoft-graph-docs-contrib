---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AgentInstance agentInstance = new AgentInstance();
AgentCardManifest agentCardManifest = new AgentCardManifest();
LinkedList<String> ownerIds = new LinkedList<String>();
ownerIds.add("0ef68a76-e247-41dd-947b-41282760a2ac");
agentCardManifest.setOwnerIds(ownerIds);
agentCardManifest.setOriginatingStore("Copilot Studio");
agentCardManifest.setDisplayName("Conditional Access Agent Card");
agentCardManifest.setDescription("Manages organizational conditional access policies");
agentCardManifest.setIconUrl("https://example.com/icon.png");
AgentProvider provider = new AgentProvider();
provider.setOrganization("Test Organization");
provider.setUrl("https://contoso.com");
agentCardManifest.setProvider(provider);
agentCardManifest.setProtocolVersion("1.0");
agentCardManifest.setVersion("1.0.0");
agentCardManifest.setDocumentationUrl("https://example.com/docs");
AgentCapabilities capabilities = new AgentCapabilities();
capabilities.setStreaming(false);
capabilities.setPushNotifications(false);
capabilities.setStateTransitionHistory(true);
LinkedList<AgentExtension> extensions = new LinkedList<AgentExtension>();
AgentExtension agentExtension = new AgentExtension();
agentExtension.setUri("https://contoso.example.com/a2a/capabilities/secureMessaging");
agentExtension.setDescription(null);
agentExtension.setRequired(false);
AgentExtensionParams params = new AgentExtensionParams();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("useHttps", true);
params.setAdditionalData(additionalData);
agentExtension.setParams(params);
extensions.add(agentExtension);
capabilities.setExtensions(extensions);
agentCardManifest.setCapabilities(capabilities);
LinkedList<String> defaultInputModes = new LinkedList<String>();
defaultInputModes.add("application/json");
agentCardManifest.setDefaultInputModes(defaultInputModes);
LinkedList<String> defaultOutputModes = new LinkedList<String>();
defaultOutputModes.add("application/json");
defaultOutputModes.add("text/html");
agentCardManifest.setDefaultOutputModes(defaultOutputModes);
agentCardManifest.setSupportsAuthenticatedExtendedCard(true);
LinkedList<AgentSkill> skills = new LinkedList<AgentSkill>();
AgentSkill agentSkill = new AgentSkill();
agentSkill.setId("threat-detection");
agentSkill.setDisplayName("Threat Detection");
agentSkill.setDescription("Detect security threats in real-time");
LinkedList<String> tags = new LinkedList<String>();
tags.add("security");
tags.add("threat");
tags.add("detection");
agentSkill.setTags(tags);
LinkedList<String> examples = new LinkedList<String>();
examples.add("Analyze this log for threats");
examples.add("Check for malware");
agentSkill.setExamples(examples);
LinkedList<String> inputModes = new LinkedList<String>();
inputModes.add("application/json");
inputModes.add("text/plain");
agentSkill.setInputModes(inputModes);
LinkedList<String> outputModes = new LinkedList<String>();
outputModes.add("application/json");
outputModes.add("text/html");
agentSkill.setOutputModes(outputModes);
skills.add(agentSkill);
agentCardManifest.setSkills(skills);
agentInstance.setAgentCardManifest(agentCardManifest);
AgentInstance result = graphClient.agentRegistry().agentInstances().byAgentInstanceId("{agentInstance-id}").patch(agentInstance);


```