---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\CreateUploadSessionPostRequestBody;
use Microsoft\Graph\Generated\Models\PrintDocumentUploadProperties;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CreateUploadSessionPostRequestBody();
$properties = new PrintDocumentUploadProperties();
$properties->setDocumentName('TestFile.pdf');
$properties->setContentType('application/pdf');
$properties->setSize(4533322);
$requestBody->setProperties($properties);

$result = $graphServiceClient->escapedPrint()->shares()->byPrinterShareId('printerShare-id')->jobs()->byPrintJobId('printJob-id')->documents()->byPrintDocumentId('printDocument-id')->createUploadSession()->post($requestBody)->wait();

```