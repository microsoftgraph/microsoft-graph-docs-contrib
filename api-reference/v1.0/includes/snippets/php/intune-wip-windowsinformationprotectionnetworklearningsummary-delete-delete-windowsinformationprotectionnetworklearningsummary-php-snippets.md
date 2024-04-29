---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->deviceManagement()->windowsInformationProtectionNetworkLearningSummaries()->byWindowsInformationProtectionNetworkLearningSummaryId('windowsInformationProtectionNetworkLearningSummary-id')->delete()->wait();

```