---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EvaluateDynamicMembershipPostRequestBody();
$requestBody->setMemberId('319b41e8-d9e4-42f8-bdc9-741113f48b33');



$result = $graphServiceClient->groupsById('group-id')->evaluateDynamicMembership()->post($requestBody);


```