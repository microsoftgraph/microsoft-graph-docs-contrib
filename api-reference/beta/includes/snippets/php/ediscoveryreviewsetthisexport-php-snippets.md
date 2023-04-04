---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ExportPostRequestBody();
$requestBody->setOutputName('Export via API');

$requestBody->setDescription('Export for the Contoso investigation');

$requestBody->setExportOptions(new ExportOptions('originalfiles,fileinfo,tags'));

$requestBody->setExportStructure(new ExportFileStructure('directory'));



$graphServiceClient->security()->cases()->ediscoveryCasesById('ediscoveryCase-id')->reviewSetsById('ediscoveryReviewSet-id')->securityExport()->post($requestBody);


```