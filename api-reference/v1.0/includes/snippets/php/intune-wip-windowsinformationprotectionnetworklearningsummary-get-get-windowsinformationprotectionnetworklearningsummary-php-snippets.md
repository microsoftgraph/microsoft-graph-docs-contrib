---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->deviceManagement()->windowsInformationProtectionNetworkLearningSummaries()->byWindowsInformationProtectionNetworkLearningSummaryId('windowsInformationProtectionNetworkLearningSummary-id')->get()->wait();

```