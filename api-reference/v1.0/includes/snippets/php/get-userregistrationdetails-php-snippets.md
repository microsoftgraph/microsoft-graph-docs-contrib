---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->reports()->authenticationMethods()->userRegistrationDetails()->byUserRegistrationDetailsId('userRegistrationDetails-id')->get()->wait();

```