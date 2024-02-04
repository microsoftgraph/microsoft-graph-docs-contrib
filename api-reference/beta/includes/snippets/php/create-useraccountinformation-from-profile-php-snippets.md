---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UserAccountInformation();
$requestBody->setAllowedAudiences(new AllowedAudiences('organization'));
$requestBody->setCountryCode('NO');

$result = $graphServiceClient->me()->profile()->account()->post($requestBody)->wait();

```