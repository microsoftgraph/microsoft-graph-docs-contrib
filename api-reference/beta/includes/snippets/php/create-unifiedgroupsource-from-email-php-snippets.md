---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UnifiedGroupSource();
$group = new Group();
$group->setMail('SecretGroup@contoso.com');


$requestBody->setGroup($group);
$requestBody->setIncludedSources(new SourceType('mailbox, site'));



$result = $graphServiceClient->compliance()->ediscovery()->casesById('case-id')->custodiansById('custodian-id')->unifiedGroupSources()->post($requestBody);


```