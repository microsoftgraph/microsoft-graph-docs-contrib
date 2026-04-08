---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AgentInstance;
use Microsoft\Graph\Beta\Generated\Models\AgentInterface;
use Microsoft\Graph\Beta\Generated\Models\AgentCardSignature;
use Microsoft\Graph\Beta\Generated\Models\JwsHeader;
use Microsoft\Graph\Beta\Generated\Models\AgentCardManifest;
use Microsoft\Graph\Beta\Generated\Models\AgentProvider;
use Microsoft\Graph\Beta\Generated\Models\AgentCapabilities;
use Microsoft\Graph\Beta\Generated\Models\AgentExtension;
use Microsoft\Graph\Beta\Generated\Models\AgentExtensionParams;
use Microsoft\Graph\Beta\Generated\Models\AgentSkill;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AgentInstance();
$requestBody->setId('Security Copilot Platform Agent: 00222');
$requestBody->setOwnerIds(['daf58b0e-44e1-433c-b6b0-ca70cae320b8', 'b9108c41-d2d2-4e78-b073-92f57b752bd0', 	]);
$requestBody->setManagedBy('719cc904-9700-4e08-9941-fd826cc84c60');
$requestBody->setOriginatingStore('Microsoft Security Copilot');
$requestBody->setCreatedBy('d47bffae-411a-4de9-8548-05e79bc01f0d');
$requestBody->setDisplayName('Conditional Access Agent');
$requestBody->setSourceAgentId('00222');
$requestBody->setAgentIdentityBlueprintId('d0108c41-d2d2-4e78-b073-92f57b752bd0');
$requestBody->setAgentIdentityId('dd108c41-d2d2-4e78-b073-92f57b752bd0');
$requestBody->setAgentUserId('ee108c41-d2d2-4e78-b073-92f57b752bd0');
$requestBody->setCreatedDateTime(new \DateTime('2025-01-01T00:00:00.1234567Z'));
$requestBody->setLastModifiedDateTime(new \DateTime('2025-01-01T00:00:00.1234567Z'));
$requestBody->setUrl('https://conditional-access-agent.example.com/a2a/v1');
$requestBody->setPreferredTransport('JSONRPC');
$additionalInterfacesAgentInterface1 = new AgentInterface();
$additionalInterfacesAgentInterface1->setUrl('https://conditional-access-agent.example.com/a2a/v1');
$additionalInterfacesAgentInterface1->setTransport('JSONRPC');
$additionalInterfacesArray []= $additionalInterfacesAgentInterface1;
$additionalInterfacesAgentInterface2 = new AgentInterface();
$additionalInterfacesAgentInterface2->setUrl('https://conditional-access-agent.example.com/a2a/grpc');
$additionalInterfacesAgentInterface2->setTransport('GRPC');
$additionalInterfacesArray []= $additionalInterfacesAgentInterface2;
$additionalInterfacesAgentInterface3 = new AgentInterface();
$additionalInterfacesAgentInterface3->setUrl('https://conditional-access-agent.example.com/a2a/json');
$additionalInterfacesAgentInterface3->setTransport('HTTP+JSON');
$additionalInterfacesArray []= $additionalInterfacesAgentInterface3;
$requestBody->setAdditionalInterfaces($additionalInterfacesArray);

$signaturesAgentCardSignature1 = new AgentCardSignature();
$signaturesAgentCardSignature1->setEscapedProtected('eyJhbGciOiJFUzI1NiIsImtpZCI6ImRpZDp3ZWI6Y29udG9zby5leGFtcGxlI2tleS0xIiwidHlwIjoiYWdlbnRjYXJkK2p3cyJ9');
$signaturesAgentCardSignature1->setSignature('xOSim9oMw_CdZM-qDhmwpB5fJcBx5I30yh-FZULd1j9ruPEUBnJzmfCynNfH1KgmJ2B7ulAYc7D2iIb-4Ul-8w');
$signaturesAgentCardSignature1Header = new JwsHeader();
$additionalData = [
'kidHint' => 'contoso-key-1',
'nonce' => 'f1e9b6c3-2f3a-4a3a-b604-1f9af3f2a9c0',
];
$signaturesAgentCardSignature1Header->setAdditionalData($additionalData);
$signaturesAgentCardSignature1->setHeader($signaturesAgentCardSignature1Header);
$signaturesArray []= $signaturesAgentCardSignature1;
$requestBody->setSignatures($signaturesArray);

$agentCardManifest = new AgentCardManifest();
$agentCardManifest->setOwnerIds(['0ef68a76-e247-41dd-947b-41282760a2ac', ]);
$agentCardManifest->setOriginatingStore('Copilot Studio');
$agentCardManifest->setDisplayName('Conditional Access Agent Card');
$agentCardManifest->setDescription('Manages organizational conditional access policies');
$agentCardManifest->setIconUrl('https://example.com/icon.png');
$agentCardManifestProvider = new AgentProvider();
$agentCardManifestProvider->setOrganization('Test Organization');
$agentCardManifestProvider->setUrl('https://test.com');
$agentCardManifest->setProvider($agentCardManifestProvider);
$agentCardManifest->setProtocolVersion('1.0');
$agentCardManifest->setVersion('1.0.0');
$agentCardManifest->setDocumentationUrl('https://example.com/docs');
$agentCardManifestCapabilities = new AgentCapabilities();
$agentCardManifestCapabilities->setStreaming(false);
$agentCardManifestCapabilities->setPushNotifications(false);
$agentCardManifestCapabilities->setStateTransitionHistory(true);
$extensionsAgentExtension1 = new AgentExtension();
$extensionsAgentExtension1->setUri('https://contoso.example.com/a2a/capabilities/secureMessaging');
$extensionsAgentExtension1->setDescription(null);
$extensionsAgentExtension1->setRequired(false);
$extensionsAgentExtension1Params = new AgentExtensionParams();
$additionalData = [
'useHttps' => true,
];
$extensionsAgentExtension1Params->setAdditionalData($additionalData);
$extensionsAgentExtension1->setParams($extensionsAgentExtension1Params);
$extensionsArray []= $extensionsAgentExtension1;
$agentCardManifestCapabilities->setExtensions($extensionsArray);

$agentCardManifest->setCapabilities($agentCardManifestCapabilities);
$agentCardManifest->setDefaultInputModes(['application/json', ]);
$agentCardManifest->setDefaultOutputModes(['application/json', 'text/html', ]);
$agentCardManifest->setSupportsAuthenticatedExtendedCard(true);
$skillsAgentSkill1 = new AgentSkill();
$skillsAgentSkill1->setId('threat-detection');
$skillsAgentSkill1->setDisplayName('Threat Detection');
$skillsAgentSkill1->setDescription('Detect security threats in real-time');
$skillsAgentSkill1->setTags(['security', 'threat', 'detection', ]);
$skillsAgentSkill1->setExamples(['Analyze this log for threats', 'Check for malware', ]);
$skillsAgentSkill1->setInputModes(['application/json', 'text/plain', ]);
$skillsAgentSkill1->setOutputModes(['application/json', 'text/html', ]);
$skillsArray []= $skillsAgentSkill1;
$agentCardManifest->setSkills($skillsArray);

$requestBody->setAgentCardManifest($agentCardManifest);

$result = $graphServiceClient->agentRegistry()->agentInstances()->post($requestBody)->wait();

```