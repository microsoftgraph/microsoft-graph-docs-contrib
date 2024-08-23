---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\TermsAndConditions;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TermsAndConditions();
$requestBody->setOdataType('#microsoft.graph.termsAndConditions');
$requestBody->setDisplayName('Display Name value');
$requestBody->setDescription('Description value');
$requestBody->setTitle('Title value');
$requestBody->setBodyText('Body Text value');
$requestBody->setAcceptanceStatement('Acceptance Statement value');
$requestBody->setVersion(7);

$result = $graphServiceClient->deviceManagement()->termsAndConditions()->byTermsAndConditionsId('termsAndConditions-id')->patch($requestBody)->wait();

```