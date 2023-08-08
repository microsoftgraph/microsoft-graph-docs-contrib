---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WindowsInformationProtectionPolicy();
$requestBody->setOdataType('#microsoft.graph.windowsInformationProtectionPolicy');

$requestBody->setDisplayName('Display Name value');

$requestBody->setDescription('Description value');

$requestBody->setVersion('Version value');

$requestBody->setEnforcementLevel(new WindowsInformationProtectionEnforcementLevel('encryptAndAuditOnly'));

$requestBody->setEnterpriseDomain('Enterprise Domain value');

$enterpriseProtectedDomainNamesWindowsInformationProtectionResourceCollection1 = new WindowsInformationProtectionResourceCollection();
$enterpriseProtectedDomainNamesWindowsInformationProtectionResourceCollection1->setOdataType('microsoft.graph.windowsInformationProtectionResourceCollection');

$enterpriseProtectedDomainNamesWindowsInformationProtectionResourceCollection1->setDisplayName('Display Name value');

$enterpriseProtectedDomainNamesWindowsInformationProtectionResourceCollection1->setResources(['Resources value', 	]);


$enterpriseProtectedDomainNamesArray []= $enterpriseProtectedDomainNamesWindowsInformationProtectionResourceCollection1;
$requestBody->setEnterpriseProtectedDomainNames($enterpriseProtectedDomainNamesArray);


$requestBody->setProtectionUnderLockConfigRequired(true);

$dataRecoveryCertificate = new WindowsInformationProtectionDataRecoveryCertificate();
$dataRecoveryCertificate->setOdataType('microsoft.graph.windowsInformationProtectionDataRecoveryCertificate');

$dataRecoveryCertificate->setSubjectName('Subject Name value');

$dataRecoveryCertificate->setDescription('Description value');

$dataRecoveryCertificate->setExpirationDateTime(new \DateTime('2016-12-31T23:57:57.2481234-08:00'));

$DataRecoveryCertificate->setCertificate(base64_decode('Y2VydGlmaWNhdGU='));


$requestBody->setDataRecoveryCertificate($dataRecoveryCertificate);
$requestBody->setRevokeOnUnenrollDisabled(true);

$requestBody->setRightsManagementServicesTemplateId('abf7b16f-b16f-abf7-6fb1-f7ab6fb1f7ab');

$requestBody->setAzureRightsManagementServicesAllowed(true);

$requestBody->setIconsVisible(true);

$protectedAppsWindowsInformationProtectionApp1 = new WindowsInformationProtectionStoreApp();
$protectedAppsWindowsInformationProtectionApp1->setOdataType('microsoft.graph.windowsInformationProtectionStoreApp');

$protectedAppsWindowsInformationProtectionApp1->setDisplayName('Display Name value');

$protectedAppsWindowsInformationProtectionApp1->setDescription('Description value');

$protectedAppsWindowsInformationProtectionApp1->setPublisherName('Publisher Name value');

$protectedAppsWindowsInformationProtectionApp1->setProductName('Product Name value');

$protectedAppsWindowsInformationProtectionApp1->setDenied(true);


$protectedAppsArray []= $protectedAppsWindowsInformationProtectionApp1;
$requestBody->setProtectedApps($protectedAppsArray);


$exemptAppsWindowsInformationProtectionApp1 = new WindowsInformationProtectionStoreApp();
$exemptAppsWindowsInformationProtectionApp1->setOdataType('microsoft.graph.windowsInformationProtectionStoreApp');

$exemptAppsWindowsInformationProtectionApp1->setDisplayName('Display Name value');

$exemptAppsWindowsInformationProtectionApp1->setDescription('Description value');

$exemptAppsWindowsInformationProtectionApp1->setPublisherName('Publisher Name value');

$exemptAppsWindowsInformationProtectionApp1->setProductName('Product Name value');

$exemptAppsWindowsInformationProtectionApp1->setDenied(true);


$exemptAppsArray []= $exemptAppsWindowsInformationProtectionApp1;
$requestBody->setExemptApps($exemptAppsArray);


$enterpriseNetworkDomainNamesWindowsInformationProtectionResourceCollection1 = new WindowsInformationProtectionResourceCollection();
$enterpriseNetworkDomainNamesWindowsInformationProtectionResourceCollection1->setOdataType('microsoft.graph.windowsInformationProtectionResourceCollection');

$enterpriseNetworkDomainNamesWindowsInformationProtectionResourceCollection1->setDisplayName('Display Name value');

$enterpriseNetworkDomainNamesWindowsInformationProtectionResourceCollection1->setResources(['Resources value', ]);


$enterpriseNetworkDomainNamesArray []= $enterpriseNetworkDomainNamesWindowsInformationProtectionResourceCollection1;
$requestBody->setEnterpriseNetworkDomainNames($enterpriseNetworkDomainNamesArray);


$enterpriseProxiedDomainsWindowsInformationProtectionProxiedDomainCollection1 = new WindowsInformationProtectionProxiedDomainCollection();
$enterpriseProxiedDomainsWindowsInformationProtectionProxiedDomainCollection1->setOdataType('microsoft.graph.windowsInformationProtectionProxiedDomainCollection');

$enterpriseProxiedDomainsWindowsInformationProtectionProxiedDomainCollection1->setDisplayName('Display Name value');

$proxiedDomainsProxiedDomain1 = new ProxiedDomain();
$proxiedDomainsProxiedDomain1->setOdataType('microsoft.graph.proxiedDomain');

$proxiedDomainsProxiedDomain1->setIpAddressOrFQDN('Ip Address Or FQDN value');

$proxiedDomainsProxiedDomain1->setProxy('Proxy value');


$proxiedDomainsArray []= $proxiedDomainsProxiedDomain1;
$enterpriseProxiedDomainsWindowsInformationProtectionProxiedDomainCollection1->setProxiedDomains($proxiedDomainsArray);



$enterpriseProxiedDomainsArray []= $enterpriseProxiedDomainsWindowsInformationProtectionProxiedDomainCollection1;
$requestBody->setEnterpriseProxiedDomains($enterpriseProxiedDomainsArray);


$enterpriseIPRangesWindowsInformationProtectionIPRangeCollection1 = new WindowsInformationProtectionIPRangeCollection();
$enterpriseIPRangesWindowsInformationProtectionIPRangeCollection1->setOdataType('microsoft.graph.windowsInformationProtectionIPRangeCollection');

$enterpriseIPRangesWindowsInformationProtectionIPRangeCollection1->setDisplayName('Display Name value');

$rangesIpRange1 = new IpRange();
$rangesIpRange1->setOdataType('microsoft.graph.ipRange');


$rangesArray []= $rangesIpRange1;
$enterpriseIPRangesWindowsInformationProtectionIPRangeCollection1->setRanges($rangesArray);



$enterpriseIPRangesArray []= $enterpriseIPRangesWindowsInformationProtectionIPRangeCollection1;
$requestBody->setEnterpriseIPRanges($enterpriseIPRangesArray);


$requestBody->setEnterpriseIPRangesAreAuthoritative(true);

$enterpriseProxyServersWindowsInformationProtectionResourceCollection1 = new WindowsInformationProtectionResourceCollection();
$enterpriseProxyServersWindowsInformationProtectionResourceCollection1->setOdataType('microsoft.graph.windowsInformationProtectionResourceCollection');

$enterpriseProxyServersWindowsInformationProtectionResourceCollection1->setDisplayName('Display Name value');

$enterpriseProxyServersWindowsInformationProtectionResourceCollection1->setResources(['Resources value', ]);


$enterpriseProxyServersArray []= $enterpriseProxyServersWindowsInformationProtectionResourceCollection1;
$requestBody->setEnterpriseProxyServers($enterpriseProxyServersArray);


$enterpriseInternalProxyServersWindowsInformationProtectionResourceCollection1 = new WindowsInformationProtectionResourceCollection();
$enterpriseInternalProxyServersWindowsInformationProtectionResourceCollection1->setOdataType('microsoft.graph.windowsInformationProtectionResourceCollection');

$enterpriseInternalProxyServersWindowsInformationProtectionResourceCollection1->setDisplayName('Display Name value');

$enterpriseInternalProxyServersWindowsInformationProtectionResourceCollection1->setResources(['Resources value', ]);


$enterpriseInternalProxyServersArray []= $enterpriseInternalProxyServersWindowsInformationProtectionResourceCollection1;
$requestBody->setEnterpriseInternalProxyServers($enterpriseInternalProxyServersArray);


$requestBody->setEnterpriseProxyServersAreAuthoritative(true);

$neutralDomainResourcesWindowsInformationProtectionResourceCollection1 = new WindowsInformationProtectionResourceCollection();
$neutralDomainResourcesWindowsInformationProtectionResourceCollection1->setOdataType('microsoft.graph.windowsInformationProtectionResourceCollection');

$neutralDomainResourcesWindowsInformationProtectionResourceCollection1->setDisplayName('Display Name value');

$neutralDomainResourcesWindowsInformationProtectionResourceCollection1->setResources(['Resources value', ]);


$neutralDomainResourcesArray []= $neutralDomainResourcesWindowsInformationProtectionResourceCollection1;
$requestBody->setNeutralDomainResources($neutralDomainResourcesArray);


$requestBody->setIndexingEncryptedStoresOrItemsBlocked(true);

$smbAutoEncryptedFileExtensionsWindowsInformationProtectionResourceCollection1 = new WindowsInformationProtectionResourceCollection();
$smbAutoEncryptedFileExtensionsWindowsInformationProtectionResourceCollection1->setOdataType('microsoft.graph.windowsInformationProtectionResourceCollection');

$smbAutoEncryptedFileExtensionsWindowsInformationProtectionResourceCollection1->setDisplayName('Display Name value');

$smbAutoEncryptedFileExtensionsWindowsInformationProtectionResourceCollection1->setResources(['Resources value', ]);


$smbAutoEncryptedFileExtensionsArray []= $smbAutoEncryptedFileExtensionsWindowsInformationProtectionResourceCollection1;
$requestBody->setSmbAutoEncryptedFileExtensions($smbAutoEncryptedFileExtensionsArray);


$requestBody->setIsAssigned(true);

$requestBody->setRevokeOnMdmHandoffDisabled(true);

$requestBody->setMdmEnrollmentUrl('https://example.com/mdmEnrollmentUrl/');

$requestBody->setWindowsHelloForBusinessBlocked(true);

$requestBody->setPinMinimumLength(0);

$requestBody->setPinUppercaseLetters(new WindowsInformationProtectionPinCharacterRequirements('requireAtLeastOne'));

$requestBody->setPinLowercaseLetters(new WindowsInformationProtectionPinCharacterRequirements('requireAtLeastOne'));

$requestBody->setPinSpecialCharacters(new WindowsInformationProtectionPinCharacterRequirements('requireAtLeastOne'));

$requestBody->setPinExpirationDays(1);

$requestBody->setNumberOfPastPinsRemembered(10);

$requestBody->setPasswordMaximumAttemptCount(11);

$requestBody->setMinutesOfInactivityBeforeDeviceLock(3);

$requestBody->setDaysWithoutContactBeforeUnenroll(0);



$result = $graphServiceClient->deviceAppManagement()->windowsInformationProtectionPolicies()->byWindowsInformationProtectionPolicyId('windowsInformationProtectionPolicy-id')->patch($requestBody);


```