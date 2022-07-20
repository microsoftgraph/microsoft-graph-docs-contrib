---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UpdateAlertsPostRequestBody();
$value1 = new ();
$additionalData = [
'assignedTo' => 'String', 
'closedDateTime' => 'String (timestamp)', 
'comments' => ['String', ],
'feedback' => $value1 = new ();
$	value1->set@odatatype('microsoft.graph.alertFeedback');


$value1->setFeedback($feedback);

'id' => 'String (identifier)', 
'status' => $value1 = new ();
$	value1->set@odatatype('microsoft.graph.alertStatus');


$value1->setStatus($status);

'tags' => ['String', ],
'vendorInformation' => $value1 = new ();
$value1->setProvider('String');

$value1->setVendor('String');


$value1->setVendorInformation($vendorInformation);

];
$value1->setAdditionalData($additionalData);



$valueArray []= $value1;
$requestBody->setValue($valueArray);




$requestResult = $graphServiceClient->security()->alerts()->updateAlerts()->post($requestBody);


```