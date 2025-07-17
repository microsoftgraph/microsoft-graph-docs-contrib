---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Security\Cases\EdiscoveryCases\Item\Searches\Item\MicrosoftGraphSecurityPurgeData\PurgeDataPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\Security\PurgeType;
use Microsoft\Graph\Beta\Generated\Models\Security\PurgeAreas;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PurgeDataPostRequestBody();
$requestBody->setPurgeType(new PurgeType('recoverable'));
$requestBody->setPurgeAreas(new PurgeAreas('teamsMessages'));

$graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->searches()->byEdiscoverySearchId('ediscoverySearch-id')->microsoftGraphSecurityPurgeData()->post($requestBody)->wait();

```