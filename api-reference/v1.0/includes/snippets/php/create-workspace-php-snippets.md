---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Workspace;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Workspace();
$requestBody->setOdataType('microsoft.graph.workspace');
$requestBody->setParentId('f7de7265-e420-47b4-9d49-28d728716241');
$requestBody->setDisplayName('testSpace001');
$requestBody->setTags(['test', 	]);

$result = $graphServiceClient->places()->post($requestBody)->wait();

```