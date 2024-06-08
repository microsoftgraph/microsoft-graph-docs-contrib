---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ExternalConnectors\ExternalGroup;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExternalGroup();
$requestBody->setId('31bea3d537902000');
$requestBody->setDisplayName('Contoso Marketing');
$requestBody->setDescription('The product marketing team');

$result = $graphServiceClient->external()->connections()->byExternalConnectionId('externalConnection-id')->groups()->post($requestBody)->wait();

```