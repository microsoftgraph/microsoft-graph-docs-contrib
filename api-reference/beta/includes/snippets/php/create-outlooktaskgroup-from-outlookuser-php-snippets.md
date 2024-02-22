---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OutlookTaskGroup();
$requestBody->setName('Leisure tasks');

$result = $graphServiceClient->me()->outlook()->taskGroups()->post($requestBody)->wait();

```