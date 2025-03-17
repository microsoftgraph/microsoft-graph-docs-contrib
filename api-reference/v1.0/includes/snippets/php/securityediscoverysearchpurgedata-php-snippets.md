---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Security\Cases\EdiscoveryCases\Item\Searches\Item\MicrosoftGraphSecurityPurgeData\PurgeDataPostRequestBody;
use Microsoft\Graph\Generated\Models\Security\PurgeType;
use Microsoft\Graph\Generated\Models\Security\PurgeAreas;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PurgeDataPostRequestBody();
$requestBody->setPurgeType(new PurgeType('recoverable'));
$requestBody->setPurgeAreas(new PurgeAreas('teamsMessages'));

$graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->searches()->byEdiscoverySearchId('ediscoverySearch-id')->microsoftGraphSecurityPurgeData()->post($requestBody)->wait();

```