---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessReviewPolicy();
$requestBody->setIsGroupOwnerManagementEnabled(true);

$result = $graphServiceClient->identityGovernance()->accessReviews()->policy()->patch($requestBody)->wait();

```