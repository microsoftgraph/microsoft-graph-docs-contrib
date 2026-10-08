---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AgentCardManifest;
use Microsoft\Graph\Beta\Generated\Models\AgentProvider;
use Microsoft\Graph\Beta\Generated\Models\AgentCapabilities;
use Microsoft\Graph\Beta\Generated\Models\SecuritySchemes;
use Microsoft\Graph\Beta\Generated\Models\SecurityRequirement;
use Microsoft\Graph\Beta\Generated\Models\AgentSkill;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AgentCardManifest();
$requestBody->setOdataType('#microsoft.graph.agentCardManifest');
$requestBody->setOwnerIds(['String', 	]);
$requestBody->setManagedBy('String');
$requestBody->setOriginatingStore('String');
$requestBody->setCreatedBy('String');
$requestBody->setProtocolVersion('String');
$requestBody->setDisplayName('String');
$requestBody->setDescription('String');
$requestBody->setIconUrl('String');
$provider = new AgentProvider();
$provider->setOdataType('microsoft.graph.agentProvider');
$requestBody->setProvider($provider);
$requestBody->setVersion('String');
$requestBody->setDocumentationUrl('String');
$capabilities = new AgentCapabilities();
$capabilities->setOdataType('microsoft.graph.agentCapabilities');
$requestBody->setCapabilities($capabilities);
$securitySchemes = new SecuritySchemes();
$securitySchemes->setOdataType('microsoft.graph.securitySchemes');
$requestBody->setSecuritySchemes($securitySchemes);
$securitySecurityRequirement1 = new SecurityRequirement();
$securitySecurityRequirement1->setOdataType('microsoft.graph.securityRequirement');
$securityArray []= $securitySecurityRequirement1;
$requestBody->setSecurity($securityArray);

$requestBody->setDefaultInputModes(['String', ]);
$requestBody->setDefaultOutputModes(['String', ]);
$skillsAgentSkill1 = new AgentSkill();
$skillsAgentSkill1->setOdataType('microsoft.graph.agentSkill');
$skillsArray []= $skillsAgentSkill1;
$requestBody->setSkills($skillsArray);

$requestBody->setSupportsAuthenticatedExtendedCard(boolean);

$result = $graphServiceClient->agentRegistry()->agentCardManifests()->byAgentCardManifestId('agentCardManifest-id')->patch($requestBody)->wait();

```