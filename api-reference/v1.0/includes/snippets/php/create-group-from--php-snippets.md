---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReferenceCreate();
$requestBody->setOdataId('https://graph.microsoft.com/v1.0/groups/{groupId}');

$graphServiceClient->escapedPrint()->shares()->byPrinterShareId('printerShare-id')->allowedGroups()->ref()->post($requestBody)->wait();

```