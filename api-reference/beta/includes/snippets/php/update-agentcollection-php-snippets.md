---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AgentCollection;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AgentCollection();
$requestBody->setDisplayName('New Display Name');

$result = $graphServiceClient->agentRegistry()->agentCollections()->byAgentCollectionId('agentCollection-id')->patch($requestBody)->wait();

```