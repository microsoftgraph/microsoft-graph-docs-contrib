---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EmailThreatSubmissionPolicy();
$requestBody->setIsReportToMicrosoftEnabled(true);

$result = $graphServiceClient->security()->threatSubmission()->emailThreatSubmissionPolicies()->post($requestBody)->wait();

```