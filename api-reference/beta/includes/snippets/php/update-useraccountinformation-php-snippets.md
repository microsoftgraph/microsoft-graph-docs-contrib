---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\UserAccountInformation;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UserAccountInformation();
$requestBody->setCountryCode('NO');

$result = $graphServiceClient->me()->profile()->account()->byUserAccountInformationId('userAccountInformation-id')->patch($requestBody)->wait();

```