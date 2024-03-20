---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CategoryTemplate();
$requestBody->setOdataType('#microsoft.graph.security.categoryTemplate');
$requestBody->setDisplayName('String');
$createdBy = new IdentitySet();
$createdBy->setOdataType('microsoft.graph.identitySet');
$requestBody->setCreatedBy($createdBy);

$result = $graphServiceClient->security()->labels()->categories()->post($requestBody)->wait();

```