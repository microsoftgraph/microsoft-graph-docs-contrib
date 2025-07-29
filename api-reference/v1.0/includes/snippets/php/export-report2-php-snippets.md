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


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExportReportPostRequestBody();
$requestBody->setDisplayName('Export 2');
$requestBody->setExportCriteria(new ExportCriteria('searchHits, partiallyIndexed'));
$requestBody->setExportLocation(new ExportLocation('responsiveLocations, nonresponsiveLocations'));
$requestBody->setAdditionalOptions(new AdditionalOptions('none'));

$graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->searches()->byEdiscoverySearchId('ediscoverySearch-id')->microsoftGraphSecurityExportReport()->post($requestBody)->wait();

```