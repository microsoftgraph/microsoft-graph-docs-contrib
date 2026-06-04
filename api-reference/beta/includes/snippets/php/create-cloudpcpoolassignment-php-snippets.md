---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\CloudPcAgentPoolUserAssignment;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CloudPcAgentPoolUserAssignment();
$requestBody->setOdataType('#microsoft.graph.cloudPcAgentPoolUserAssignment');
$requestBody->setUserPrincipalId('f6a7b8c9-d0e1-2345-f678-901234567890');

$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->cloudPcPools()->byCloudPcPoolId('cloudPcPool-id')->assignments()->post($requestBody)->wait();

```