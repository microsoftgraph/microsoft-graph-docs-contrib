---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\DirectoryObjects\ValidateProperties\ValidatePropertiesPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ValidatePropertiesPostRequestBody();
$requestBody->setEntityType('Group');
$requestBody->setDisplayName('Myprefix_test_mysuffix');
$requestBody->setMailNickname('Myprefix_test_mysuffix');
$requestBody->setOnBehalfOfUserId('onBehalfOfUserId-value');

$graphServiceClient->directoryObjects()->validateProperties()->post($requestBody)->wait();

```