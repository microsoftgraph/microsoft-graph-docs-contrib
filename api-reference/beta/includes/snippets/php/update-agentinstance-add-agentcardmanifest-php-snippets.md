---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AgentInstance;
use Microsoft\Graph\Beta\Generated\Models\AgentCardManifest;
use Microsoft\Graph\Beta\Generated\Models\AgentProvider;
use Microsoft\Graph\Beta\Generated\Models\AgentCapabilities;
use Microsoft\Graph\Beta\Generated\Models\AgentExtension;
use Microsoft\Graph\Beta\Generated\Models\AgentExtensionParams;
use Microsoft\Graph\Beta\Generated\Models\AgentSkill;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AgentInstance();
$agentCardManifest = new AgentCardManifest();
$agentCardManifest->setOwnerIds(['0ef68a76-e247-41dd-947b-41282760a2ac', 	]);
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

$result = $graphServiceClient->agentRegistry()->agentInstances()->byAgentInstanceId('agentInstance-id')->patch($requestBody)->wait();

```