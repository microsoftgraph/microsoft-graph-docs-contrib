---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\EmailThreatSubmissionPolicy;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EmailThreatSubmissionPolicy();
$requestBody->setIsReportToMicrosoftEnabled(true);

$result = $graphServiceClient->security()->threatSubmission()->emailThreatSubmissionPolicies()->post($requestBody)->wait();

```