---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GetMemberGroupsPostRequestBody();
$requestBody->setSecurityEnabledOnly(true);

$result = $graphServiceClient->me()->getMemberGroups()->post($requestBody)->wait();

```