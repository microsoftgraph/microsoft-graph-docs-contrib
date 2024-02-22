---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AuthorizationPolicy();
$requestBody->setAllowEmailVerifiedUsersToJoinOrganization(false);

$result = $graphServiceClient->policies()->authorizationPolicy()->patch($requestBody)->wait();

```