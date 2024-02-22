---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->identityProtection()->riskDetections()->byRiskDetectionId('riskDetection-id')->get()->wait();

```