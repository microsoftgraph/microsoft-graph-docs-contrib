---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PersonAnnotation();
$requestBody->setAllowedAudiences(new AllowedAudiences('organization'));

$result = $graphServiceClient->users()->byUserId('user-id')->profile()->notes()->byPersonAnnotationId('personAnnotation-id')->patch($requestBody)->wait();

```