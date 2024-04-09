---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->identity()->conditionalAccess()->authenticationContextClassReferences()->byAuthenticationContextClassReferenceId('authenticationContextClassReference-id')->get()->wait();

```