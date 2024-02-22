---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->organization()->byOrganizationId('organization-id')->certificateBasedAuthConfiguration()->byCertificateBasedAuthConfigurationId('certificateBasedAuthConfiguration-id')->delete()->wait();

```