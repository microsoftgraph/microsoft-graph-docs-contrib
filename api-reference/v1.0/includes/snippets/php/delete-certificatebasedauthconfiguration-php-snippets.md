---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->organization()->byOrganizationId('organization-id')->certificateBasedAuthConfiguration()->byCertificateBasedAuthConfigurationId('certificateBasedAuthConfiguration-id')->delete()->wait();

```