---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\PrintTaskDefinition;
use Microsoft\Graph\Generated\Models\AppIdentity;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PrintTaskDefinition();
$requestBody->setDisplayName('Test TaskDefinitionName');
$createdBy = new AppIdentity();
$createdBy->setDisplayName('Requesting App Display Name');
$requestBody->setCreatedBy($createdBy);

$result = $graphServiceClient->escapedPrint()->taskDefinitions()->byPrintTaskDefinitionId('printTaskDefinition-id')->patch($requestBody)->wait();

```