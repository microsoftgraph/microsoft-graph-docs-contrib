---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new B2cIdentityUserFlow();
$requestBody->setId('UserFlowWithAPIConnector');

$requestBody->setUserFlowType(new UserFlowType('signuporsignin'));

$requestBody->setUserFlowTypeVersion(1);

$apiConnectorConfiguration = new UserFlowApiConnectorConfiguration();
$apiConnectorConfigurationPostFederationSignup = new PostFederationSignup();
$additionalData = [
'@odata.id' => '{apiConnectorId}', 
];
$apiConnectorConfigurationPostFederationSignup->setAdditionalData($additionalData);



$apiConnectorConfiguration->setPostFederationSignup($apiConnectorConfigurationPostFederationSignup);
$apiConnectorConfigurationPostAttributeCollection = new PostAttributeCollection();
$additionalData = [
'@odata.id' => '{apiConnectorId}', 
];
$apiConnectorConfigurationPostAttributeCollection->setAdditionalData($additionalData);



$apiConnectorConfiguration->setPostAttributeCollection($apiConnectorConfigurationPostAttributeCollection);

$requestBody->setApiConnectorConfiguration($apiConnectorConfiguration);


$requestResult = $graphServiceClient->identity()->b2cUserFlows()->post($requestBody);


```