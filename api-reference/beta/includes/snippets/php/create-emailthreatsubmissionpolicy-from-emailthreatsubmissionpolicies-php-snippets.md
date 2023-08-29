---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EmailThreatSubmissionPolicy();
$requestBody->setIsReportToMicrosoftEnabled(true);

$result = $graphServiceClient->security()->threatSubmission()->emailThreatSubmissionPolicies()->post($requestBody)->wait();

```