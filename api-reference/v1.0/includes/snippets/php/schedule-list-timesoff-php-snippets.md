---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new TimesOffRequestBuilderGetRequestConfiguration();
$queryParameters = TimesOffRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "sharedTimeOff/startDateTime ge 2019-03-11T00:00:00.000Z and sharedTimeOff/endDateTime le 2019-03-18T00:00:00.000Z and draftTimeOff/startDateTime ge 2019-03-11T00:00:00.000Z and draftTimeOff/endDateTime le 2019-03-18T00:00:00.000Z";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->teamsById('team-id')->schedule()->timesOff()->get($requestConfiguration);


```