---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Group;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Group();
$requestBody->setDescription('Library Assist - ADC');
$requestBody->setDisplayName('Library Assist - ADC');
$requestBody->setMailNickname('library-help-adc');

$result = $graphServiceClient->groups()->byGroupId('group-id')->patch($requestBody)->wait();

```