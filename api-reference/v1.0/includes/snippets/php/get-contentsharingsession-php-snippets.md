---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->communications()->calls()->byCallId('call-id')->contentSharingSessions()->byContentSharingSessionId('contentSharingSession-id')->get()->wait();

```