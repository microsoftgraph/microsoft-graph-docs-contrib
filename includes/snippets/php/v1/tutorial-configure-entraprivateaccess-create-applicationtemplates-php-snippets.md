---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\ApplicationTemplates\Item\Instantiate\InstantiatePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new InstantiatePostRequestBody();
$requestBody->setDisplayName('newPrivateApp');

$result = $graphServiceClient->applicationTemplates()->byApplicationTemplateId('applicationTemplate-id')->instantiate()->post($requestBody)->wait();

```