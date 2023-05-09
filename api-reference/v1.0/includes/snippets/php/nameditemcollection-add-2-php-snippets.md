---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AddFormulaLocalPostRequestBody();
$requestBody->setName('test7');

$requestBody->setFormula('=SUM(Sheet2!$A$1+Sheet2!$A$2)');

$requestBody->setComment('Comment for the named item');



$result = $graphServiceClient->drivesById('drive-id')->itemsById('driveItem-id')->workbook()->names()->addFormulaLocal()->post($requestBody);


```