---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\UnifiedGroupSource;
use Microsoft\Graph\Generated\Models\Group;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UnifiedGroupSource();
$group = new Group();
$group->setMail('SOCTeam@contoso.com');
$requestBody->setGroup($group);
$requestBody->setIncludedSources(new SourceType('mailbox, site'));

$result = $graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->custodians()->byEdiscoveryCustodianId('ediscoveryCustodian-id')->unifiedGroupSources()->post($requestBody)->wait();

```