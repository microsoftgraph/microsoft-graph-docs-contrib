---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EmailThreatSubmissionPolicy();
$requestBody->setIsReportToMicrosoftEnabled(false);

$result = $graphServiceClient->security()->threatSubmission()->emailThreatSubmissionPolicies()->byEmailThreatSubmissionPolicyId('emailThreatSubmissionPolicy-id')->patch($requestBody)->wait();

```