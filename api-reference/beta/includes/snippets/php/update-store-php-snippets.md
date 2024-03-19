---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Store();
$requestBody->setDefaultLanguageTag('en-US');

$result = $graphServiceClient->termStore()->patch($requestBody)->wait();

```