---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExternalIdentitiesPolicy();
$requestBody->setAllowExternalIdentitiesToLeave(false);

$result = $graphServiceClient->policies()->externalIdentitiesPolicy()->patch($requestBody)->wait();

```