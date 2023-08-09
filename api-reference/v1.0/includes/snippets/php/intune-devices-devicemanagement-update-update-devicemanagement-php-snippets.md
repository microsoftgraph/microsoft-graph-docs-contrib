---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeviceManagement();
$requestBody->setOdataType('#microsoft.graph.deviceManagement');

$requestBody->setSubscriptionState(new DeviceManagementSubscriptionState('active'));

$deviceProtectionOverview = new DeviceProtectionOverview();
$deviceProtectionOverview->setOdataType('microsoft.graph.deviceProtectionOverview');

$deviceProtectionOverview->setTotalReportedDeviceCount(8);

$deviceProtectionOverview->setInactiveThreatAgentDeviceCount(14);

$deviceProtectionOverview->setUnknownStateThreatAgentDeviceCount(2);

$deviceProtectionOverview->setPendingSignatureUpdateDeviceCount(1);

$deviceProtectionOverview->setCleanDeviceCount(0);

$deviceProtectionOverview->setPendingFullScanDeviceCount(10);

$deviceProtectionOverview->setPendingRestartDeviceCount(9);

$deviceProtectionOverview->setPendingManualStepsDeviceCount(13);

$deviceProtectionOverview->setPendingOfflineScanDeviceCount(13);

$deviceProtectionOverview->setCriticalFailuresDeviceCount(11);

$deviceProtectionOverview->setPendingQuickScanDeviceCount(11);


$requestBody->setDeviceProtectionOverview($deviceProtectionOverview);
$windowsMalwareOverview = new WindowsMalwareOverview();
$windowsMalwareOverview->setOdataType('microsoft.graph.windowsMalwareOverview');

$windowsMalwareOverview->setMalwareDetectedDeviceCount(10);

$windowsMalwareOverview->setTotalMalwareCount(1);

$windowsMalwareOverview->setTotalDistinctMalwareCount(9);

$malwareStateSummaryWindowsMalwareStateCount1 = new WindowsMalwareStateCount();
$malwareStateSummaryWindowsMalwareStateCount1->setOdataType('microsoft.graph.windowsMalwareStateCount');

$malwareStateSummaryWindowsMalwareStateCount1->setState(new WindowsMalwareThreatState('actionFailed'));

$malwareStateSummaryWindowsMalwareStateCount1->setDeviceCount(11);

$malwareStateSummaryWindowsMalwareStateCount1->setMalwareDetectionCount(5);

$malwareStateSummaryWindowsMalwareStateCount1->setDistinctMalwareCount(4);

$malwareStateSummaryWindowsMalwareStateCount1->setLastUpdateDateTime(new \DateTime('2016-12-31T23:58:21.6459442-08:00'));


$malwareStateSummaryArray []= $malwareStateSummaryWindowsMalwareStateCount1;
$windowsMalwareOverview->setMalwareStateSummary($malwareStateSummaryArray);


$malwareSeveritySummaryWindowsMalwareSeverityCount1 = new WindowsMalwareSeverityCount();
$malwareSeveritySummaryWindowsMalwareSeverityCount1->setOdataType('microsoft.graph.windowsMalwareSeverityCount');

$malwareSeveritySummaryWindowsMalwareSeverityCount1->setSeverity(new WindowsMalwareSeverity('low'));

$malwareSeveritySummaryWindowsMalwareSeverityCount1->setMalwareDetectionCount(5);

$malwareSeveritySummaryWindowsMalwareSeverityCount1->setDistinctMalwareCount(4);

$malwareSeveritySummaryWindowsMalwareSeverityCount1->setLastUpdateDateTime(new \DateTime('2016-12-31T23:58:21.6459442-08:00'));


$malwareSeveritySummaryArray []= $malwareSeveritySummaryWindowsMalwareSeverityCount1;
$windowsMalwareOverview->setMalwareSeveritySummary($malwareSeveritySummaryArray);


$malwareExecutionStateSummaryWindowsMalwareExecutionStateCount1 = new WindowsMalwareExecutionStateCount();
$malwareExecutionStateSummaryWindowsMalwareExecutionStateCount1->setOdataType('microsoft.graph.windowsMalwareExecutionStateCount');

$malwareExecutionStateSummaryWindowsMalwareExecutionStateCount1->setExecutionState(new WindowsMalwareExecutionState('blocked'));

$malwareExecutionStateSummaryWindowsMalwareExecutionStateCount1->setDeviceCount(11);

$malwareExecutionStateSummaryWindowsMalwareExecutionStateCount1->setLastUpdateDateTime(new \DateTime('2016-12-31T23:58:21.6459442-08:00'));


$malwareExecutionStateSummaryArray []= $malwareExecutionStateSummaryWindowsMalwareExecutionStateCount1;
$windowsMalwareOverview->setMalwareExecutionStateSummary($malwareExecutionStateSummaryArray);


$malwareCategorySummaryWindowsMalwareCategoryCount1 = new WindowsMalwareCategoryCount();
$malwareCategorySummaryWindowsMalwareCategoryCount1->setOdataType('microsoft.graph.windowsMalwareCategoryCount');

$malwareCategorySummaryWindowsMalwareCategoryCount1->setCategory(new WindowsMalwareCategory('adware'));

$malwareCategorySummaryWindowsMalwareCategoryCount1->setDeviceCount(11);

$malwareCategorySummaryWindowsMalwareCategoryCount1->setActiveMalwareDetectionCount(11);

$malwareCategorySummaryWindowsMalwareCategoryCount1->setDistinctActiveMalwareCount(10);

$malwareCategorySummaryWindowsMalwareCategoryCount1->setLastUpdateDateTime(new \DateTime('2016-12-31T23:58:21.6459442-08:00'));


$malwareCategorySummaryArray []= $malwareCategorySummaryWindowsMalwareCategoryCount1;
$windowsMalwareOverview->setMalwareCategorySummary($malwareCategorySummaryArray);


$malwareNameSummaryWindowsMalwareNameCount1 = new WindowsMalwareNameCount();
$malwareNameSummaryWindowsMalwareNameCount1->setOdataType('microsoft.graph.windowsMalwareNameCount');

$malwareNameSummaryWindowsMalwareNameCount1->setMalwareIdentifier('Malware Identifier value');

$malwareNameSummaryWindowsMalwareNameCount1->setName('Name value');

$malwareNameSummaryWindowsMalwareNameCount1->setDeviceCount(11);

$malwareNameSummaryWindowsMalwareNameCount1->setLastUpdateDateTime(new \DateTime('2016-12-31T23:58:21.6459442-08:00'));


$malwareNameSummaryArray []= $malwareNameSummaryWindowsMalwareNameCount1;
$windowsMalwareOverview->setMalwareNameSummary($malwareNameSummaryArray);


$osVersionsSummaryOsVersionCount1 = new OsVersionCount();
$osVersionsSummaryOsVersionCount1->setOdataType('microsoft.graph.osVersionCount');

$osVersionsSummaryOsVersionCount1->setOsVersion('Os Version value');

$osVersionsSummaryOsVersionCount1->setDeviceCount(11);

$osVersionsSummaryOsVersionCount1->setLastUpdateDateTime(new \DateTime('2016-12-31T23:58:21.6459442-08:00'));


$osVersionsSummaryArray []= $osVersionsSummaryOsVersionCount1;
$windowsMalwareOverview->setOsVersionsSummary($osVersionsSummaryArray);



$requestBody->setWindowsMalwareOverview($windowsMalwareOverview);


$result = $graphServiceClient->deviceManagement()->patch($requestBody);


```