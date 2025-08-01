---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Security\Cases\EdiscoveryCases\Item\Searches\Item\MicrosoftGraphSecurityExportReport\ExportReportPostRequestBody;
use Microsoft\Graph\Generated\Models\Security\ExportCriteria;
use Microsoft\Graph\Generated\Models\Security\ExportLocation;
use Microsoft\Graph\Generated\Models\Security\AdditionalOptions;
use Microsoft\Graph\Generated\Models\Security\CloudAttachmentVersion;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExportReportPostRequestBody();
$requestBody->setDisplayName('Export 5');
$requestBody->setExportCriteria(new ExportCriteria('partiallyIndexed'));
$requestBody->setExportLocation(new ExportLocation('responsiveLocations'));
$requestBody->setAdditionalOptions(new AdditionalOptions('cloudAttachments'));
$requestBody->setCloudAttachmentVersion(new CloudAttachmentVersion('all'));
$additionalData = [
	'doucmentVersion' => 'recent100',
];
$requestBody->setAdditionalData($additionalData);

$graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->searches()->byEdiscoverySearchId('ediscoverySearch-id')->microsoftGraphSecurityExportReport()->post($requestBody)->wait();

```