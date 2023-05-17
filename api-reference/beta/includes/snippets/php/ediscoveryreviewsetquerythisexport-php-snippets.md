---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ExportPostRequestBody();
$requestBody->setOutputName('Export reviewset query via API');

$requestBody->setDescription('Export for the Contoso investigation 2');

$requestBody->setExportOptions(new ExportOptions('originalfiles,fileinfo,tags'));

$requestBody->setExportStructure(new ExportFileStructure('directory'));



$graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->reviewSets()->byReviewSetId('ediscoveryReviewSet-id')->queries()->byQuerieId('ediscoveryReviewSetQuery-id')->microsoftGraphSecurityExport()->post($requestBody);


```