---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AgentCollection;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AgentCollection();
$requestBody->setId('Security Copilot Platform Workspace: 001');
$requestBody->setOwnerIds(['daf58b0e-44e1-433c-b6b0-ca70cae320b8', 'b9108c41-d2d2-4e78-b073-92f57b752bd0', 	]);
$requestBody->setManagedBy('719cc904-9700-4e08-9941-fd826cc84c60');
$requestBody->setOriginatingStore('Microsoft Security Copilot');
$requestBody->setCreatedBy('d47bffae-411a-4de9-8548-05e79bc01f0d');
$requestBody->setDisplayName('Conditional Access Agents');
$requestBody->setDescription('A collection of agents to manage your organizations conditional access policies');

$result = $graphServiceClient->agentRegistry()->agentCollections()->post($requestBody)->wait();

```