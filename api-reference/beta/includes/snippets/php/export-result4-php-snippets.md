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


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExportResultPostRequestBody();
$requestBody->setDisplayName('Export 4');
$requestBody->setExportCriteria(new ExportCriteria('partiallyIndexed'));
$requestBody->setExportLocation(new ExportLocation('responsiveLocations, nonresponsiveLocations'));
$requestBody->setAdditionalOptions(new AdditionalOptions('advancedIndexing, subfolderContents, allItemsInFolder, listAttachments, teamsAndYammerConversations, htmlTranscripts, cloudAttachments, includeFolderAndPath, splitSource, condensePaths, friendlyName, includeReport'));
$requestBody->setExportFormat(new ExportFormat('eml'));

$graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->searches()->byEdiscoverySearchId('ediscoverySearch-id')->microsoftGraphSecurityExportResult()->post($requestBody)->wait();

```