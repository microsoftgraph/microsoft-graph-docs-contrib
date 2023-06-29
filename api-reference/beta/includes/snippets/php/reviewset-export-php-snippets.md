---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ExportPostRequestBody();
$requestBody->setOutputName('2020-12-06 Contoso investigation export');

$requestBody->setDescription('Export for the Contoso investigation');

$requestBody->setExportOptions(new ExportOptions('originalfiles,fileinfo,tags'));

$requestBody->setExportStructure(new ExportFileStructure('directory'));



$graphServiceClient->compliance()->ediscovery()->cases()->byCaseId('case-id')->reviewSets()->byReviewSetId('reviewSet-id')->microsoftGraphEdiscoveryExport()->post($requestBody);


```