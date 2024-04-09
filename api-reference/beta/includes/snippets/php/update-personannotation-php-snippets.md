---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\PersonAnnotation;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PersonAnnotation();
$requestBody->setAllowedAudiences(new AllowedAudiences('organization'));

$result = $graphServiceClient->users()->byUserId('user-id')->profile()->notes()->byPersonAnnotationId('personAnnotation-id')->patch($requestBody)->wait();

```