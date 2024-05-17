---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\MicrosoftApplicationDataAccessSettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MicrosoftApplicationDataAccessSettings();
$requestBody->setDisabledForGroup('edbfe4fb-ec70-4300-928f-dbb2ae86c981');

$result = $graphServiceClient->organization()->byOrganizationId('organization-id')->settings()->microsoftApplicationDataAccess()->patch($requestBody)->wait();

```