---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExternalConnection();
$requestBody->setName('Contoso HR Service Tickets');
$requestBody->setDescription('Connection to index HR service tickets');

$result = $graphServiceClient->external()->connections()->byExternalConnectionId('externalConnection-id')->patch($requestBody)->wait();

```