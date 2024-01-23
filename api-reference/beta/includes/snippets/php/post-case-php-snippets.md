---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EscapedCase();
$requestBody->setDisplayName('My Case 1');

$result = $graphServiceClient->compliance()->ediscovery()->cases()->post($requestBody)->wait();

```