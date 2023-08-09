---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EmailThreatSubmissionPolicy();
$requestBody->setIsReportToMicrosoftEnabled(false);



$result = $graphServiceClient->security()->threatSubmission()->emailThreatSubmissionPolicies()->byEmailThreatSubmissionPolicyId('emailThreatSubmissionPolicy-id')->patch($requestBody);


```