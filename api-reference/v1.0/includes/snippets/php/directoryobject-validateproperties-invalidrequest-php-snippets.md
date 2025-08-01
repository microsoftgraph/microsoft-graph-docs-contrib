---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\DirectoryObjects\ValidateProperties\ValidatePropertiesPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ValidatePropertiesPostRequestBody();
$requestBody->setEntityType('Group');
$requestBody->setDisplayName('test');
$requestBody->setMailNickname('test');
$requestBody->setOnBehalfOfUserId('onBehalfOfUserId-value');

$graphServiceClient->directoryObjects()->validateProperties()->post($requestBody)->wait();

```