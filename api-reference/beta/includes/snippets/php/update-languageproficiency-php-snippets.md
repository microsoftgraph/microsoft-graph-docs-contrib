---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\LanguageProficiency;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new LanguageProficiency();
$requestBody->setAllowedAudiences(new AllowedAudiences('organization'));

$result = $graphServiceClient->me()->profile()->languages()->byLanguageProficiencyId('languageProficiency-id')->patch($requestBody)->wait();

```