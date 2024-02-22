---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->security()->threatSubmission()->emailThreatSubmissionPolicies()->byEmailThreatSubmissionPolicyId('emailThreatSubmissionPolicy-id')->get()->wait();

```