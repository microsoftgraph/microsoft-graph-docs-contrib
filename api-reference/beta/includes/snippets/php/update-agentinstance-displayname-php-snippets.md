---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AgentInstance;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AgentInstance();
$requestBody->setDisplayName('Teams Meeting Scheduler Agent');

$result = $graphServiceClient->agentRegistry()->agentInstances()->byAgentInstanceId('agentInstance-id')->patch($requestBody)->wait();

```