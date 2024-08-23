---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\PronounsSettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PronounsSettings();
$requestBody->setIsEnabledInOrganization(true);

$result = $graphServiceClient->admin()->people()->pronouns()->patch($requestBody)->wait();

```