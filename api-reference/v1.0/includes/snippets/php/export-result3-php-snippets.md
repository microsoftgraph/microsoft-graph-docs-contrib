---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Security\Cases\EdiscoveryCases\Item\Searches\Item\MicrosoftGraphSecurityExportResult\ExportResultPostRequestBody;
use Microsoft\Graph\Generated\Models\Security\ExportCriteria;
use Microsoft\Graph\Generated\Models\Security\ExportLocation;
use Microsoft\Graph\Generated\Models\Security\AdditionalOptions;
use Microsoft\Graph\Generated\Models\Security\ExportFormat;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExportResultPostRequestBody();
$requestBody->setDisplayName('Export 3');
$requestBody->setExportCriteria(new ExportCriteria('searchHits, partiallyIndexed'));
$requestBody->setExportLocation(new ExportLocation('responsiveLocations'));
$requestBody->setAdditionalOptions(new AdditionalOptions('none'));
$requestBody->setExportFormat(new ExportFormat('msg'));

$graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->searches()->byEdiscoverySearchId('ediscoverySearch-id')->microsoftGraphSecurityExportResult()->post($requestBody)->wait();

```