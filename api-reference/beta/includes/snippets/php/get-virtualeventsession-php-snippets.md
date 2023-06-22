---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);


$result = $graphServiceClient->solutions()->virtualEvents()->events()->byEventId('virtualEvent-id')->sessions()->bySessionId('virtualEventSession-id')->get();


```