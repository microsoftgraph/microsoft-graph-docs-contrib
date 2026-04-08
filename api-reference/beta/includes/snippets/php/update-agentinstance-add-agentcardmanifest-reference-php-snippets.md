---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AgentInstance;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AgentInstance();
$additionalData = [
	'agentCardManifest@odata.bind' => 'https://graph.microsoft.com/beta/agentRegistry/agentCardManifests(\'employee-assistant\')',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->agentRegistry()->agentInstances()->byAgentInstanceId('agentInstance-id')->patch($requestBody)->wait();

```