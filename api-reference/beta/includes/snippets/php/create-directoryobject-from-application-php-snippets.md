---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReferenceCreate();
$requestBody->setOdataId('https://graph.microsoft.com/beta/directoryObjects/{id}');

$graphServiceClient->applications()->byApplicationId('application-id')->owners()->ref()->post($requestBody)->wait();

```