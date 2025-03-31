---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\StrongAuthenticationRequirements;
use Microsoft\Graph\Beta\Generated\Models\PerUserMfaState;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new StrongAuthenticationRequirements();
$requestBody->setPerUserMfaState(new PerUserMfaState('disabled'));

$result = $graphServiceClient->users()->byUserId('user-id')->authentication()->requirements()->patch($requestBody)->wait();

```