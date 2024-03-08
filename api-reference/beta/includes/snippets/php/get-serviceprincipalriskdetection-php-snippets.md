---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->identityProtection()->servicePrincipalRiskDetections()->byServicePrincipalRiskDetectionId('servicePrincipalRiskDetection-id')->get()->wait();

```