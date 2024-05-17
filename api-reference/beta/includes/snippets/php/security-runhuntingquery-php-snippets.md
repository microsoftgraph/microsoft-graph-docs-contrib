---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\RunHuntingQueryPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RunHuntingQueryPostRequestBody();
$requestBody->setQuery('DeviceProcessEvents | where InitiatingProcessFileName =~ \"powershell.exe\" | project Timestamp, FileName, InitiatingProcessFileName | order by Timestamp desc | limit 2');

$result = $graphServiceClient->security()->microsoftGraphSecurityRunHuntingQuery()->post($requestBody)->wait();

```