---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UserAccountInformation();
$requestBody->setCountryCode('NO');

$result = $graphServiceClient->me()->profile()->account()->byUserAccountInformationId('userAccountInformation-id')->patch($requestBody)->wait();

```