---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new InsightsSettings();
$requestBody->setDisabledForGroup('edbfe4fb-ec70-4300-928f-dbb2ae86c981');



$result = $graphServiceClient->organizationById('organization-id')->settings()->itemInsights()->patch($requestBody);


```