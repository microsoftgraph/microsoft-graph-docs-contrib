---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\PronounsSettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PronounsSettings();
$requestBody->setIsEnabledInOrganization(true);

$result = $graphServiceClient->admin()->people()->pronouns()->patch($requestBody)->wait();

```