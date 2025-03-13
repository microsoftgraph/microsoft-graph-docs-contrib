---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Groups\Item\ValidateProperties\ValidatePropertiesPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ValidatePropertiesPostRequestBody();
$requestBody->setDisplayName('Myprefix_test_mysuffix');
$requestBody->setMailNickname('Myprefix_test_mysuffix');
$requestBody->setOnBehalfOfUserId('onBehalfOfUserId-value');

$graphServiceClient->groups()->byGroupId('group-id')->validateProperties()->post($requestBody)->wait();

```