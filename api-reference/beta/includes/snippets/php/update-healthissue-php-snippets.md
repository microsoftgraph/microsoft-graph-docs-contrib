---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\HealthIssue;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new HealthIssue();
$requestBody->setStatus(new HealthIssueStatus('closed'));

$result = $graphServiceClient->security()->identities()->healthIssues()->byHealthIssueId('healthIssue-id')->patch($requestBody)->wait();

```