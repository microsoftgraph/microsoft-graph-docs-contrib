---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AgentInstance agentInstance = new AgentInstance();
agentInstance.setId("Security Copilot Platform Agent: 00222");
LinkedList<String> ownerIds = new LinkedList<String>();
ownerIds.add("daf58b0e-44e1-433c-b6b0-ca70cae320b8");
ownerIds.add("b9108c41-d2d2-4e78-b073-92f57b752bd0");
agentInstance.setOwnerIds(ownerIds);
agentInstance.setManagedBy("719cc904-9700-4e08-9941-fd826cc84c60");
agentInstance.setOriginatingStore("Microsoft Security Copilot");
agentInstance.setCreatedBy("d47bffae-411a-4de9-8548-05e79bc01f0d");
agentInstance.setDisplayName("Conditional Access Agent");
agentInstance.setSourceAgentId("00222");
agentInstance.setAgentIdentityBlueprintId("d0108c41-d2d2-4e78-b073-92f57b752bd0");
agentInstance.setAgentIdentityId("dd108c41-d2d2-4e78-b073-92f57b752bd0");
agentInstance.setAgentUserId("ee108c41-d2d2-4e78-b073-92f57b752bd0");
OffsetDateTime createdDateTime = OffsetDateTime.parse("2025-01-01T00:00:00.1234567Z");
agentInstance.setCreatedDateTime(createdDateTime);
OffsetDateTime lastModifiedDateTime = OffsetDateTime.parse("2025-01-01T00:00:00.1234567Z");
agentInstance.setLastModifiedDateTime(lastModifiedDateTime);
agentInstance.setUrl("https://conditional-access-agent.example.com/a2a/v1");
agentInstance.setPreferredTransport("JSONRPC");
LinkedList<AgentInterface> additionalInterfaces = new LinkedList<AgentInterface>();
AgentInterface agentInterface = new AgentInterface();
agentInterface.setUrl("https://conditional-access-agent.example.com/a2a/v1");
agentInterface.setTransport("JSONRPC");
additionalInterfaces.add(agentInterface);
AgentInterface agentInterface1 = new AgentInterface();
agentInterface1.setUrl("https://conditional-access-agent.example.com/a2a/grpc");
agentInterface1.setTransport("GRPC");
additionalInterfaces.add(agentInterface1);
AgentInterface agentInterface2 = new AgentInterface();
agentInterface2.setUrl("https://conditional-access-agent.example.com/a2a/json");
agentInterface2.setTransport("HTTP+JSON");
additionalInterfaces.add(agentInterface2);
agentInstance.setAdditionalInterfaces(additionalInterfaces);
LinkedList<AgentCardSignature> signatures = new LinkedList<AgentCardSignature>();
AgentCardSignature agentCardSignature = new AgentCardSignature();
agentCardSignature.setProtectedEscaped("eyJhbGciOiJFUzI1NiIsImtpZCI6ImRpZDp3ZWI6Y29udG9zby5leGFtcGxlI2tleS0xIiwidHlwIjoiYWdlbnRjYXJkK2p3cyJ9");
agentCardSignature.setSignature("xOSim9oMw_CdZM-qDhmwpB5fJcBx5I30yh-FZULd1j9ruPEUBnJzmfCynNfH1KgmJ2B7ulAYc7D2iIb-4Ul-8w");
JwsHeader header = new JwsHeader();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("kidHint", "contoso-key-1");
additionalData.put("nonce", "f1e9b6c3-2f3a-4a3a-b604-1f9af3f2a9c0");
header.setAdditionalData(additionalData);
agentCardSignature.setHeader(header);
signatures.add(agentCardSignature);
agentInstance.setSignatures(signatures);
AgentCardManifest agentCardManifest = new AgentCardManifest();
LinkedList<String> ownerIds1 = new LinkedList<String>();
ownerIds1.add("0ef68a76-e247-41dd-947b-41282760a2ac");
agentCardManifest.setOwnerIds(ownerIds1);
agentCardManifest.setOriginatingStore("Copilot Studio");
agentCardManifest.setDisplayName("Conditional Access Agent Card");
agentCardManifest.setDescription("Manages organizational conditional access policies");
agentCardManifest.setIconUrl("https://example.com/icon.png");
AgentProvider provider = new AgentProvider();
provider.setOrganization("Test Organization");
provider.setUrl("https://test.com");
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
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("useHttps", true);
params.setAdditionalData(additionalData1);
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
AgentInstance result = graphClient.agentRegistry().agentInstances().post(agentInstance);


```