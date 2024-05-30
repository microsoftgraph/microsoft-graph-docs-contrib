---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Print\Shares\Item\Jobs\Item\Documents\Item\CreateUploadSession\CreateUploadSessionPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\PrintDocumentUploadProperties;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CreateUploadSessionPostRequestBody();
$properties = new PrintDocumentUploadProperties();
$properties->setDocumentName('TestFile.pdf');
$properties->setContentType('application/pdf');
$properties->setSize(4533322);
$requestBody->setProperties($properties);

$result = $graphServiceClient->escapedPrint()->shares()->byPrinterShareId('printerShare-id')->jobs()->byPrintJobId('printJob-id')->documents()->byPrintDocumentId('printDocument-id')->createUploadSession()->post($requestBody)->wait();

```