---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Security\Incidents\MicrosoftGraphSecurityMergeIncidents\MergeIncidentsPostRequestBody;
use Microsoft\Graph\Generated\Models\Security\CorrelationReason;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MergeIncidentsPostRequestBody();
$requestBody->setIncidentIds(['2972395', '2972396', 	]);
$requestBody->setIncidentComment('Merging related incidents from the same campaign');
$requestBody->setMergeReasons(new CorrelationReason('sameCampaign, sameActor'));

$result = $graphServiceClient->security()->incidents()->microsoftGraphSecurityMergeIncidents()->post($requestBody)->wait();

```