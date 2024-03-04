---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->security()->rules()->detectionRules()->byDetectionRuleId('detectionRule-id')->get()->wait();

```