---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Admin\Teams\Policy\UserAssignments\MicrosoftGraphTeamsAdministrationUnassign\UnassignPostRequestBody;
use Microsoft\Graph\Generated\Models\TeamsAdministration\TeamsPolicyUserAssignment;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UnassignPostRequestBody();
$valueTeamsPolicyUserAssignment1 = new TeamsPolicyUserAssignment();
$valueTeamsPolicyUserAssignment1->setOdataType('#microsoft.graph.teamsAdministration.teamsPolicyUserAssignment');
$valueTeamsPolicyUserAssignment1->setUserId('5c802b19-3600-83f1-1767-7b9edc7f38ab');
$valueTeamsPolicyUserAssignment1->setPolicyType('TeamsMeetingPolicy');
$valueArray []= $valueTeamsPolicyUserAssignment1;
$requestBody->setValue($valueArray);


$graphServiceClient->admin()->teams()->policy()->userAssignments()->microsoftGraphTeamsAdministrationUnassign()->post($requestBody)->wait();

```