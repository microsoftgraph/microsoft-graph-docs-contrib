---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\PersonAnnotation;
use Microsoft\Graph\Beta\Generated\Models\AllowedAudiences;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PersonAnnotation();
$requestBody->setAllowedAudiences(new AllowedAudiences('organization'));

$result = $graphServiceClient->users()->byUserId('user-id')->profile()->notes()->byPersonAnnotationId('personAnnotation-id')->patch($requestBody)->wait();

```