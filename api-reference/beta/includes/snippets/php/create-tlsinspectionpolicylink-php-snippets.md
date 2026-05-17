---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\TlsInspectionPolicyLink;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\Status;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\TlsInspectionPolicy;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TlsInspectionPolicyLink();
$requestBody->setOdataType('#microsoft.graph.networkaccess.tlsInspectionPolicyLink');
$requestBody->setState(new Status('enabled'));
$policy = new TlsInspectionPolicy();
$policy->setOdataType('#microsoft.graph.networkaccess.tlsInspectionPolicy');
$policy->setId('b712c469-e7cd-e7cb-738f-94b199570b0d');
$requestBody->setPolicy($policy);

$result = $graphServiceClient->networkAccess()->filteringProfiles()->byFilteringProfileId('filteringProfile-id')->policies()->post($requestBody)->wait();

```