---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->security()->attackSimulation()->simulations()->bySimulationId('simulation-id')->delete()->wait();

```