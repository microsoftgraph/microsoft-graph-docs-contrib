---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UnifiedGroupSource();
$group = new Group();
$group->setMail('SOCTeam@contoso.com');
$requestBody->setGroup($group);
$requestBody->setIncludedSources(new SourceType('mailbox, site'));

$result = $graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->custodians()->byEdiscoveryCustodianId('ediscoveryCustodian-id')->unifiedGroupSources()->post($requestBody)->wait();

```