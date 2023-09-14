---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessReviewPolicy();
$requestBody->setIsGroupOwnerManagementEnabled(true);

$result = $graphServiceClient->policies()->accessReviewPolicy()->patch($requestBody)->wait();

```