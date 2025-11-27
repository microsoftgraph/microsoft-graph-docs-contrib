---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Admin\Teams\Policy\UserAssignments\MicrosoftGraphTeamsAdministrationAssign\AssignPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\TeamsAdministration\TeamsPolicyUserAssignment;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AssignPostRequestBody();
$valueTeamsPolicyUserAssignment1 = new TeamsPolicyUserAssignment();
$valueTeamsPolicyUserAssignment1->setOdataType('#microsoft.graph.teamsAdministration.teamsPolicyUserAssignment');
$valueTeamsPolicyUserAssignment1->setUserId('5c802b19-3600-83f1-1767-7b9edc7f38ab');
$valueTeamsPolicyUserAssignment1->setPolicyType('TeamsMeetingPolicy');
$valueTeamsPolicyUserAssignment1->setPolicyId('VnMAaN3X2X1B9tEHx1CJWfC76PSaKEzA4NoUuqIMRUo');
$valueArray []= $valueTeamsPolicyUserAssignment1;
$requestBody->setValue($valueArray);


$graphServiceClient->admin()->teams()->policy()->userAssignments()->microsoftGraphTeamsAdministrationAssign()->post($requestBody)->wait();

```