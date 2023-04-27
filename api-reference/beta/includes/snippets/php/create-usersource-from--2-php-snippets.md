---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UserSource();
$requestBody->setEmail('adelev@contoso.com');

$requestBody->setIncludedSources(new SourceType('mailbox'));



$result = $graphServiceClient->compliance()->ediscovery()->casesById('case-id')->legalHoldsById('legalHold-id')->userSources()->post($requestBody);


```