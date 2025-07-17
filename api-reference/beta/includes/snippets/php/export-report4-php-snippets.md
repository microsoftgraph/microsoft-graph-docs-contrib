---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Security\Cases\EdiscoveryCases\Item\Searches\Item\MicrosoftGraphSecurityExportReport\ExportReportPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\Security\ExportCriteria;
use Microsoft\Graph\Beta\Generated\Models\Security\ExportLocation;
use Microsoft\Graph\Beta\Generated\Models\Security\AdditionalOptions;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExportReportPostRequestBody();
$requestBody->setDisplayName('Export 4');
$requestBody->setExportCriteria(new ExportCriteria('partiallyIndexed'));
$requestBody->setExportLocation(new ExportLocation('responsiveLocations, nonresponsiveLocations'));
$requestBody->setAdditionalOptions(new AdditionalOptions('advancedIndexing, subfolderContents, allItemsInFolder, listAttachments, teamsAndYammerConversations, htmlTranscripts, cloudAttachments'));

$graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->searches()->byEdiscoverySearchId('ediscoverySearch-id')->microsoftGraphSecurityExportReport()->post($requestBody)->wait();

```