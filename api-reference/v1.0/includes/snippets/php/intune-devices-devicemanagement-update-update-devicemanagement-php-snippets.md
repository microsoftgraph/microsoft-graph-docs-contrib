---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new DeviceManagement();
$requestBody->set@odatatype('#microsoft.graph.deviceManagement');

$requestBody->setSubscriptionState(new DeviceManagementSubscriptionState('active'));

$additionalData = [
		'deviceProtectionOverview' => $requestBody = new DeviceProtectionOverview();
$		requestBody->set@odatatype('microsoft.graph.deviceProtectionOverview');

		$requestBody->setTotalReportedDeviceCount(8);

		$requestBody->setInactiveThreatAgentDeviceCount(14);

		$requestBody->setUnknownStateThreatAgentDeviceCount(2);

		$requestBody->setPendingSignatureUpdateDeviceCount(1);

		$requestBody->setCleanDeviceCount(0);

		$requestBody->setPendingFullScanDeviceCount(10);

		$requestBody->setPendingRestartDeviceCount(9);

		$requestBody->setPendingManualStepsDeviceCount(13);

		$requestBody->setPendingOfflineScanDeviceCount(13);

		$requestBody->setCriticalFailuresDeviceCount(11);

		$requestBody->setPendingQuickScanDeviceCount(11);


$requestBody->setDeviceProtectionOverview($deviceProtectionOverview);

		'windowsMalwareOverview' => $requestBody = new WindowsMalwareOverview();
$		requestBody->set@odatatype('microsoft.graph.windowsMalwareOverview');

		$requestBody->setMalwareDetectedDeviceCount(10);

		$requestBody->setTotalMalwareCount(1);

		$requestBody->setTotalDistinctMalwareCount(9);

$malwareStateSummary1 = new ();
$		malwareStateSummary1->set@odatatype('microsoft.graph.windowsMalwareStateCount');

$		malwareStateSummary1->setState('actionFailed');

		$malwareStateSummary1->setDeviceCount(11);

		$malwareStateSummary1->setMalwareDetectionCount(5);

		$malwareStateSummary1->setDistinctMalwareCount(4);

$		malwareStateSummary1->setLastUpdateDateTime('2016-12-31T23:58:21.6459442-08:00');


$malwareStateSummaryArray []= $malwareStateSummary1;
$requestBody->setMalwareStateSummary($malwareStateSummaryArray);


$malwareSeveritySummary1 = new ();
$	malwareSeveritySummary1->set@odatatype('microsoft.graph.windowsMalwareSeverityCount');

$	malwareSeveritySummary1->setSeverity('low');

	$malwareSeveritySummary1->setMalwareDetectionCount(5);

	$malwareSeveritySummary1->setDistinctMalwareCount(4);

$	malwareSeveritySummary1->setLastUpdateDateTime('2016-12-31T23:58:21.6459442-08:00');


$malwareSeveritySummaryArray []= $malwareSeveritySummary1;
$requestBody->setMalwareSeveritySummary($malwareSeveritySummaryArray);


$malwareExecutionStateSummary1 = new ();
$malwareExecutionStateSummary1->set@odatatype('microsoft.graph.windowsMalwareExecutionStateCount');

$malwareExecutionStateSummary1->setExecutionState('blocked');

$malwareExecutionStateSummary1->setDeviceCount(11);

$malwareExecutionStateSummary1->setLastUpdateDateTime('2016-12-31T23:58:21.6459442-08:00');


$malwareExecutionStateSummaryArray []= $malwareExecutionStateSummary1;
$requestBody->setMalwareExecutionStateSummary($malwareExecutionStateSummaryArray);


$malwareCategorySummary1 = new ();
$malwareCategorySummary1->set@odatatype('microsoft.graph.windowsMalwareCategoryCount');

$malwareCategorySummary1->setCategory('adware');

$malwareCategorySummary1->setDeviceCount(11);

$malwareCategorySummary1->setActiveMalwareDetectionCount(11);

$malwareCategorySummary1->setDistinctActiveMalwareCount(10);

$malwareCategorySummary1->setLastUpdateDateTime('2016-12-31T23:58:21.6459442-08:00');


$malwareCategorySummaryArray []= $malwareCategorySummary1;
$requestBody->setMalwareCategorySummary($malwareCategorySummaryArray);


$malwareNameSummary1 = new ();
$malwareNameSummary1->set@odatatype('microsoft.graph.windowsMalwareNameCount');

$malwareNameSummary1->setMalwareIdentifier('Malware Identifier value');

$malwareNameSummary1->setName('Name value');

$malwareNameSummary1->setDeviceCount(11);

$malwareNameSummary1->setLastUpdateDateTime('2016-12-31T23:58:21.6459442-08:00');


$malwareNameSummaryArray []= $malwareNameSummary1;
$requestBody->setMalwareNameSummary($malwareNameSummaryArray);


$osVersionsSummary1 = new ();
$osVersionsSummary1->set@odatatype('microsoft.graph.osVersionCount');

$osVersionsSummary1->setOsVersion('Os Version value');

$osVersionsSummary1->setDeviceCount(11);

$osVersionsSummary1->setLastUpdateDateTime('2016-12-31T23:58:21.6459442-08:00');


$osVersionsSummaryArray []= $osVersionsSummary1;
$requestBody->setOsVersionsSummary($osVersionsSummaryArray);



$requestBody->setWindowsMalwareOverview($windowsMalwareOverview);

];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->deviceManagement()->patch($requestBody);


```