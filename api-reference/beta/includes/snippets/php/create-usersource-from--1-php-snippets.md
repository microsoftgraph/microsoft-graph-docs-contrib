---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UserSource();
$requestBody->setEmail('megan@contoso.com');

$requestBody->setIncludedSources(new SourceType('mailbox, site'));



$result = $graphServiceClient->compliance()->ediscovery()->casesById('case-id')->custodiansById('custodian-id')->userSources()->post($requestBody);


```