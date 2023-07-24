---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CitationTemplate();
$requestBody->set@odatatype('#microsoft.graph.security.citationTemplate');

$requestBody->setDisplayName('String');

$createdBy = new IdentitySet();
$createdBy->set@odatatype('microsoft.graph.identitySet');


$requestBody->setCreatedBy($createdBy);
$requestBody->setCitationUrl('String');

$requestBody->setCitationJurisdiction('String');



$result = $graphServiceClient->security()->labels()->citations()->post($requestBody);


```