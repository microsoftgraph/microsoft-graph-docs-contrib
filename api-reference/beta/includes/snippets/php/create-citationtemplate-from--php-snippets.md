---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CitationTemplate();
$requestBody->setOdataType('#microsoft.graph.security.citationTemplate');

$requestBody->setDisplayName('String');

$createdBy = new IdentitySet();
$createdBy->setOdataType('microsoft.graph.identitySet');


$requestBody->setCreatedBy($createdBy);
$requestBody->setCitationUrl('String');

$requestBody->setCitationJurisdiction('String');



$result = $graphServiceClient->security()->labels()->citations()->post($requestBody);


```