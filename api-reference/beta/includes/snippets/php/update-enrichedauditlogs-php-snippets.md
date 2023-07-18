---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EnrichedAuditLogs();
$requestBody->setOdataType('#microsoft.graph.networkaccess.enrichedAuditLogs');

$sharepoint = new EnrichedAuditLogsSettings();
$sharepoint->setOdataType('microsoft.graph.networkaccess.enrichedAuditLogsSettings');


$requestBody->setSharepoint($sharepoint);
$teams = new EnrichedAuditLogsSettings();
$teams->setOdataType('microsoft.graph.networkaccess.enrichedAuditLogsSettings');


$requestBody->setTeams($teams);
$exchange = new EnrichedAuditLogsSettings();
$exchange->setOdataType('microsoft.graph.networkaccess.enrichedAuditLogsSettings');


$requestBody->setExchange($exchange);


$result = $graphServiceClient->networkAccess()->settings()->enrichedAuditLogs()->patch($requestBody);


```