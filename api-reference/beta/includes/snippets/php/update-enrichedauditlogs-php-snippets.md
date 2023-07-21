---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EnrichedAuditLogs();
$requestBody->set@odatatype('#microsoft.graph.networkaccess.enrichedAuditLogs');

$sharepoint = new EnrichedAuditLogsSettings();
$sharepoint->set@odatatype('microsoft.graph.networkaccess.enrichedAuditLogsSettings');


$requestBody->setSharepoint($sharepoint);
$teams = new EnrichedAuditLogsSettings();
$teams->set@odatatype('microsoft.graph.networkaccess.enrichedAuditLogsSettings');


$requestBody->setTeams($teams);
$exchange = new EnrichedAuditLogsSettings();
$exchange->set@odatatype('microsoft.graph.networkaccess.enrichedAuditLogsSettings');


$requestBody->setExchange($exchange);


$result = $graphServiceClient->networkAccess()->settings()->enrichedAuditLogs()->patch($requestBody);


```