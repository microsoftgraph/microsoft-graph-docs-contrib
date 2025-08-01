---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Security\Cases\EdiscoveryCases\Item\ReviewSets\Item\MicrosoftGraphSecurityExport\ExportPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\Security\ExportOptions;
use Microsoft\Graph\Beta\Generated\Models\Security\ExportFileStructure;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExportPostRequestBody();
$requestBody->setOutputName('Export via API');
$requestBody->setDescription('Export for the Contoso investigation');
$requestBody->setExportOptions(new ExportOptions('originalFiles, tags, splitSource, includeFolderAndPath, friendlyName, condensePaths'));
$requestBody->setExportStructure(new ExportFileStructure('msg'));

$graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->reviewSets()->byEdiscoveryReviewSetId('ediscoveryReviewSet-id')->microsoftGraphSecurityExport()->post($requestBody)->wait();

```