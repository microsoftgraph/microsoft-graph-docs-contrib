---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Program;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Program();
$requestBody->setDisplayName('testprogram3 new name');

$result = $graphServiceClient->programs()->byProgramId('program-id')->patch($requestBody)->wait();

```