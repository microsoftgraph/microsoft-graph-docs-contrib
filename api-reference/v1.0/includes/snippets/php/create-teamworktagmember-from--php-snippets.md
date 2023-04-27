---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new TeamworkTagMember();
$requestBody->setUserId('97f62344-57dc-409c-88ad-c4af14158ff5');



$result = $graphServiceClient->teamsById('team-id')->tagsById('teamworkTag-id')->members()->post($requestBody);


```