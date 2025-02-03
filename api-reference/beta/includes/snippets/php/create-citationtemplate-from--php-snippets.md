---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Security\CitationTemplate;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CitationTemplate();
$requestBody->setOdataType('#microsoft.graph.security.citationTemplate');
$requestBody->setDisplayName('Contoso Company Policy');
$requestBody->setCitationUrl('www.citationUrl.com');
$requestBody->setCitationJurisdiction('Contoso');

$result = $graphServiceClient->security()->labels()->citations()->post($requestBody)->wait();

```