---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationClass();
$requestBody->setDescription('Health Level 1');
$requestBody->setClassCode('Health 501');
$requestBody->setDisplayName('Health 1');
$requestBody->setExternalId('11019');
$requestBody->setExternalName('Health Level 1');
$requestBody->setExternalSource(new EducationExternalSource('sis'));
$requestBody->setMailNickname('fineartschool.net');

$result = $graphServiceClient->education()->classes()->post($requestBody)->wait();

```