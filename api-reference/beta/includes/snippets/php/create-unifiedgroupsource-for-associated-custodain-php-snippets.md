---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Microsoft\Graph\Security\UnifiedGroupSource
use Microsoft\Graph\Beta\Generated\Models\Group;
use Microsoft\Graph\Beta\Generated\Models\Security\IncludedSources;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UnifiedGroupSource();
$group = new Group();
$group->setMail('SOCTeam@contoso.com');
$requestBody->setGroup($group);
$requestBody->setIncludedSources(new SourceType('mailbox, site'));

$result = $graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->custodians()->byEdiscoveryCustodianId('ediscoveryCustodian-id')->unifiedGroupSources()->post($requestBody)->wait();

```