---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\DeletePasswordSingleSignOnCredentialsPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeletePasswordSingleSignOnCredentialsPostRequestBody();
$requestBody->setId('314ac440-129f-4cb3-ad61-24ef4a7de1d9');

$graphServiceClient->users()->byUserId('user-id')->deletePasswordSingleSignOnCredentials()->post($requestBody)->wait();

```