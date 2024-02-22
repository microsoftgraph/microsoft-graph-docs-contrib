---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->security()->threatSubmission()->urlThreats()->byUrlThreatSubmissionId('urlThreatSubmission-id')->get()->wait();

```