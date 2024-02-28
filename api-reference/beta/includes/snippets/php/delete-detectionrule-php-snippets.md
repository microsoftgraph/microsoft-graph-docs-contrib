---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->security()->rules()->detectionRules()->byDetectionRuleId('detectionRule-id')->delete()->wait();

```