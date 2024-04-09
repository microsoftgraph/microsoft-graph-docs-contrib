---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Tag;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Tag();
$requestBody->setDescription('This is an updated description.');

$result = $graphServiceClient->compliance()->ediscovery()->cases()->byCaseId('case-id')->tags()->byTagId('tag-id')->patch($requestBody)->wait();

```