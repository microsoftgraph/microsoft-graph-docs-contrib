---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\UserAccountInformation;
use Microsoft\Graph\Beta\Generated\Models\AllowedAudiences;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UserAccountInformation();
$requestBody->setAllowedAudiences(new AllowedAudiences('organization'));
$requestBody->setCountryCode('NO');

$result = $graphServiceClient->me()->profile()->account()->post($requestBody)->wait();

```