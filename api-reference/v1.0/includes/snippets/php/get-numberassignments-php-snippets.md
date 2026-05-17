---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->admin()->teams()->telephoneNumberManagement()->numberAssignments()->byNumberAssignmentId('numberAssignment-id')->get()->wait();

```