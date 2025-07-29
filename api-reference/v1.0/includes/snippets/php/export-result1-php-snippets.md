---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Security\Cases\EdiscoveryCases\Item\Searches\Item\MicrosoftGraphSecurityExportResult\ExportResultPostRequestBody;
use Microsoft\Graph\Generated\Models\Security\ExportCriteria;
use Microsoft\Graph\Generated\Models\Security\AdditionalOptions;
use Microsoft\Graph\Generated\Models\Security\ExportFormat;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExportResultPostRequestBody();
$requestBody->setDisplayName('Export 1 - simple PST');
$requestBody->setExportCriteria(new ExportCriteria('searchHits'));
$requestBody->setAdditionalOptions(new AdditionalOptions('htmlTranscripts, splitSource, includeFolderAndPath, condensePaths, friendlyName'));
$requestBody->setExportFormat(new ExportFormat('pst'));

$graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->searches()->byEdiscoverySearchId('ediscoverySearch-id')->microsoftGraphSecurityExportResult()->post($requestBody)->wait();

```