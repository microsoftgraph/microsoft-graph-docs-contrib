---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PersonName();
$requestBody->setNickname('Kesha');

$result = $graphServiceClient->me()->profile()->names()->byPersonNameId('personName-id')->patch($requestBody)->wait();

```