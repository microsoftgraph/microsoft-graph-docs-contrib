---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Group();
$requestBody->setDisplayName('myGroup');

$result = $graphServiceClient->sites()->bySiteId('site-id')->termStore()->groups()->post($requestBody)->wait();

```