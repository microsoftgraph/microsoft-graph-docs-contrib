---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\CloudPcAgentPool;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CloudPcAgentPool();
$requestBody->setOdataType('#microsoft.graph.cloudPcAgentPool');
$requestBody->setDisplayName('Contoso Development Pool Updated');
$requestBody->setDescription('Contoso Development Pool Description Updated');

$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->cloudPcPools()->byCloudPcPoolId('cloudPcPool-id')->patch($requestBody)->wait();

```