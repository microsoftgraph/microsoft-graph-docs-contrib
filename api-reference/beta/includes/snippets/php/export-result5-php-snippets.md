---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Security\Cases\EdiscoveryCases\Item\Searches\Item\MicrosoftGraphSecurityExportResult\ExportResultPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\Security\ExportCriteria;
use Microsoft\Graph\Beta\Generated\Models\Security\ExportLocation;
use Microsoft\Graph\Beta\Generated\Models\Security\AdditionalOptions;
use Microsoft\Graph\Beta\Generated\Models\Security\ExportFormat;
use Microsoft\Graph\Beta\Generated\Models\Security\CloudAttachmentVersion;
use Microsoft\Graph\Beta\Generated\Models\Security\DocumentVersion;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExportResultPostRequestBody();
$requestBody->setDisplayName('Export 5');
$requestBody->setExportCriteria(new ExportCriteria('partiallyIndexed'));
$requestBody->setExportLocation(new ExportLocation('responsiveLocations'));
$requestBody->setAdditionalOptions(new AdditionalOptions('splitSource, includeFolderAndPath, condensePaths, friendlyName'));
$requestBody->setExportFormat(new ExportFormat('eml'));
$requestBody->setCloudAttachmentVersion(new CloudAttachmentVersion('all'));
$requestBody->setDocumentVersion(new DocumentVersion('recent100'));

$graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->searches()->byEdiscoverySearchId('ediscoverySearch-id')->microsoftGraphSecurityExportResult()->post($requestBody)->wait();

```