---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReferenceCreate();
$requestBody->setOdataId('https://graph.microsoft.com/v1.0/users/alexd@contoso.com');

$graphServiceClient->groups()->byGroupId('group-id')->acceptedSenders()->ref()->post($requestBody)->wait();

```