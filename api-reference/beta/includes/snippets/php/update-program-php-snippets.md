---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Program();
$requestBody->setDisplayName('testprogram3 new name');

$result = $graphServiceClient->programs()->byProgramId('program-id')->patch($requestBody)->wait();

```