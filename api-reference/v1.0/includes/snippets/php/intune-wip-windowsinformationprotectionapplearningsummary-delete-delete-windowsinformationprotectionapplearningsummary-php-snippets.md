---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->deviceManagement()->windowsInformationProtectionAppLearningSummaries()->byWindowsInformationProtectionAppLearningSummaryId('windowsInformationProtectionAppLearningSummary-id')->delete()->wait();

```