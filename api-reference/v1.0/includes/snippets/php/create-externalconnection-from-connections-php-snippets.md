---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExternalConnection();
$requestBody->setId('contosohr');
$requestBody->setName('Contoso HR');
$requestBody->setDescription('Connection to index Contoso HR system');

$result = $graphServiceClient->external()->connections()->post($requestBody)->wait();

```