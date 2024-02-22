---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->security()->threatSubmission()->emailThreats()->byEmailThreatSubmissionId('emailThreatSubmission-id')->get()->wait();

```