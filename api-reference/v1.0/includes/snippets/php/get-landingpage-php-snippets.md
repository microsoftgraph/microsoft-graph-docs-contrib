---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->security()->attackSimulation()->landingPages()->byLandingPageId('landingPage-id')->get()->wait();

```