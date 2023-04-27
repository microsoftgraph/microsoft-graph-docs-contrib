---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UserSource();
$requestBody->setEmail('admin@M365x809305.onmicrosoft.com');

$requestBody->setIncludedSources(new SourceType('mailbox, site'));



$result = $graphServiceClient->security()->cases()->ediscoveryCasesById('ediscoveryCase-id')->legalHoldsById('ediscoveryHoldPolicy-id')->userSources()->post($requestBody);


```