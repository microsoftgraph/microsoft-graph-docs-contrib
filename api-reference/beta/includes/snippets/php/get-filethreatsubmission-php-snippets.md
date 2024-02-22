---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->security()->threatSubmission()->fileThreats()->byFileThreatSubmissionId('fileThreatSubmission-id')->get()->wait();

```