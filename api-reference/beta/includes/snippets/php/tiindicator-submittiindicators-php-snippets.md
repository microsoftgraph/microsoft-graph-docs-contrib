---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new SubmitTiIndicatorsPostRequestBody();
$valueTiIndicator1 = new TiIndicator();
$valueTiIndicator1->setActivityGroupNames([]);

$valueTiIndicator1->setConfidence(0);

$valueTiIndicator1->setDescription('This is a canary indicator for demo purpose. Take no action on any observables set in this indicator.');

$valueTiIndicator1->setExpirationDateTime(new DateTime('2019-03-01T21:44:03.1668987+00:00'));

$valueTiIndicator1->setExternalId('Test--8586509942423126760MS164-0');

$valueTiIndicator1->setFileHashType(new FileHashType('sha256'));

$valueTiIndicator1->setFileHashValue('b555c45c5b1b01304217e72118d6ca1b14b7013644a078273cea27bbdc1cf9d6');

$valueTiIndicator1->setKillChain([]);

$valueTiIndicator1->setMalwareFamilyNames([]);

$valueTiIndicator1->setSeverity(0);

$valueTiIndicator1->setTags([]);

$valueTiIndicator1->setTargetProduct('Azure Sentinel');

$valueTiIndicator1->setThreatType('WatchList');

$valueTiIndicator1->setTlpLevel(new TlpLevel('green'));


$valueArray []= $valueTiIndicator1;
$valueTiIndicator2 = new TiIndicator();
$valueTiIndicator2->setActivityGroupNames([]);

$valueTiIndicator2->setConfidence(0);

$valueTiIndicator2->setDescription('This is a canary indicator for demo purpose. Take no action on any observables set in this indicator.');

$valueTiIndicator2->setExpirationDateTime(new DateTime('2019-03-01T21:44:03.1748779+00:00'));

$valueTiIndicator2->setExternalId('Test--8586509942423126760MS164-1');

$valueTiIndicator2->setFileHashType(new FileHashType('sha256'));

$valueTiIndicator2->setFileHashValue('1796b433950990b28d6a22456c9d2b58ced1bdfcdf5f16f7e39d6b9bdca4213b');

$valueTiIndicator2->setKillChain([]);

$valueTiIndicator2->setMalwareFamilyNames([]);

$valueTiIndicator2->setSeverity(0);

$valueTiIndicator2->setTags([]);

$valueTiIndicator2->setTargetProduct('Azure Sentinel');

$valueTiIndicator2->setThreatType('WatchList');

$valueTiIndicator2->setTlpLevel(new TlpLevel('green'));


$valueArray []= $valueTiIndicator2;
$requestBody->setValue($valueArray);




$result = $graphServiceClient->security()->tiIndicators()->submitTiIndicators()->post($requestBody);


```