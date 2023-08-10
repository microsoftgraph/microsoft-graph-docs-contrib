---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Windows10EndpointProtectionConfiguration();
$requestBody->setOdataType('#microsoft.graph.windows10EndpointProtectionConfiguration');

$requestBody->setDescription('Description value');

$requestBody->setDisplayName('Display Name value');

$requestBody->setVersion(7);

$requestBody->setFirewallBlockStatefulFTP(true);

$requestBody->setFirewallIdleTimeoutForSecurityAssociationInSeconds(2);

$requestBody->setFirewallPreSharedKeyEncodingMethod(new FirewallPreSharedKeyEncodingMethodType('none'));

$requestBody->setFirewallIPSecExemptionsAllowNeighborDiscovery(true);

$requestBody->setFirewallIPSecExemptionsAllowICMP(true);

$requestBody->setFirewallIPSecExemptionsAllowRouterDiscovery(true);

$requestBody->setFirewallIPSecExemptionsAllowDHCP(true);

$requestBody->setFirewallCertificateRevocationListCheckMethod(new FirewallCertificateRevocationListCheckMethodType('none'));

$requestBody->setFirewallMergeKeyingModuleSettings(true);

$requestBody->setFirewallPacketQueueingMethod(new FirewallPacketQueueingMethodType('disabled'));

$firewallProfileDomain = new WindowsFirewallNetworkProfile();
$firewallProfileDomain->setOdataType('microsoft.graph.windowsFirewallNetworkProfile');

$firewallProfileDomain->setFirewallEnabled(new StateManagementSetting('blocked'));

$firewallProfileDomain->setStealthModeBlocked(true);

$firewallProfileDomain->setIncomingTrafficBlocked(true);

$firewallProfileDomain->setUnicastResponsesToMulticastBroadcastsBlocked(true);

$firewallProfileDomain->setInboundNotificationsBlocked(true);

$firewallProfileDomain->setAuthorizedApplicationRulesFromGroupPolicyMerged(true);

$firewallProfileDomain->setGlobalPortRulesFromGroupPolicyMerged(true);

$firewallProfileDomain->setConnectionSecurityRulesFromGroupPolicyMerged(true);

$firewallProfileDomain->setOutboundConnectionsBlocked(true);

$firewallProfileDomain->setInboundConnectionsBlocked(true);

$firewallProfileDomain->setSecuredPacketExemptionAllowed(true);

$firewallProfileDomain->setPolicyRulesFromGroupPolicyMerged(true);


$requestBody->setFirewallProfileDomain($firewallProfileDomain);
$firewallProfilePublic = new WindowsFirewallNetworkProfile();
$firewallProfilePublic->setOdataType('microsoft.graph.windowsFirewallNetworkProfile');

$firewallProfilePublic->setFirewallEnabled(new StateManagementSetting('blocked'));

$firewallProfilePublic->setStealthModeBlocked(true);

$firewallProfilePublic->setIncomingTrafficBlocked(true);

$firewallProfilePublic->setUnicastResponsesToMulticastBroadcastsBlocked(true);

$firewallProfilePublic->setInboundNotificationsBlocked(true);

$firewallProfilePublic->setAuthorizedApplicationRulesFromGroupPolicyMerged(true);

$firewallProfilePublic->setGlobalPortRulesFromGroupPolicyMerged(true);

$firewallProfilePublic->setConnectionSecurityRulesFromGroupPolicyMerged(true);

$firewallProfilePublic->setOutboundConnectionsBlocked(true);

$firewallProfilePublic->setInboundConnectionsBlocked(true);

$firewallProfilePublic->setSecuredPacketExemptionAllowed(true);

$firewallProfilePublic->setPolicyRulesFromGroupPolicyMerged(true);


$requestBody->setFirewallProfilePublic($firewallProfilePublic);
$firewallProfilePrivate = new WindowsFirewallNetworkProfile();
$firewallProfilePrivate->setOdataType('microsoft.graph.windowsFirewallNetworkProfile');

$firewallProfilePrivate->setFirewallEnabled(new StateManagementSetting('blocked'));

$firewallProfilePrivate->setStealthModeBlocked(true);

$firewallProfilePrivate->setIncomingTrafficBlocked(true);

$firewallProfilePrivate->setUnicastResponsesToMulticastBroadcastsBlocked(true);

$firewallProfilePrivate->setInboundNotificationsBlocked(true);

$firewallProfilePrivate->setAuthorizedApplicationRulesFromGroupPolicyMerged(true);

$firewallProfilePrivate->setGlobalPortRulesFromGroupPolicyMerged(true);

$firewallProfilePrivate->setConnectionSecurityRulesFromGroupPolicyMerged(true);

$firewallProfilePrivate->setOutboundConnectionsBlocked(true);

$firewallProfilePrivate->setInboundConnectionsBlocked(true);

$firewallProfilePrivate->setSecuredPacketExemptionAllowed(true);

$firewallProfilePrivate->setPolicyRulesFromGroupPolicyMerged(true);


$requestBody->setFirewallProfilePrivate($firewallProfilePrivate);
$requestBody->setDefenderAttackSurfaceReductionExcludedPaths(['Defender Attack Surface Reduction Excluded Paths value', 	]);

$requestBody->setDefenderGuardedFoldersAllowedAppPaths(['Defender Guarded Folders Allowed App Paths value', 	]);

$requestBody->setDefenderAdditionalGuardedFolders(['Defender Additional Guarded Folders value', 	]);

$requestBody->setDefenderExploitProtectionXml(base64_decode('ZGVmZW5kZXJFeHBsb2l0UHJvdGVjdGlvblhtbA=='));

$requestBody->setDefenderExploitProtectionXmlFileName('Defender Exploit Protection Xml File Name value');

$requestBody->setDefenderSecurityCenterBlockExploitProtectionOverride(true);

$requestBody->setAppLockerApplicationControl(new AppLockerApplicationControlType('enforceComponentsAndStoreApps'));

$requestBody->setSmartScreenEnableInShell(true);

$requestBody->setSmartScreenBlockOverrideForFiles(true);

$requestBody->setApplicationGuardEnabled(true);

$requestBody->setApplicationGuardBlockFileTransfer(new ApplicationGuardBlockFileTransferType('blockImageAndTextFile'));

$requestBody->setApplicationGuardBlockNonEnterpriseContent(true);

$requestBody->setApplicationGuardAllowPersistence(true);

$requestBody->setApplicationGuardForceAuditing(true);

$requestBody->setApplicationGuardBlockClipboardSharing(new ApplicationGuardBlockClipboardSharingType('blockBoth'));

$requestBody->setApplicationGuardAllowPrintToPDF(true);

$requestBody->setApplicationGuardAllowPrintToXPS(true);

$requestBody->setApplicationGuardAllowPrintToLocalPrinters(true);

$requestBody->setApplicationGuardAllowPrintToNetworkPrinters(true);

$requestBody->setBitLockerDisableWarningForOtherDiskEncryption(true);

$requestBody->setBitLockerEnableStorageCardEncryptionOnMobile(true);

$requestBody->setBitLockerEncryptDevice(true);

$bitLockerRemovableDrivePolicy = new BitLockerRemovableDrivePolicy();
$bitLockerRemovableDrivePolicy->setOdataType('microsoft.graph.bitLockerRemovableDrivePolicy');

$bitLockerRemovableDrivePolicy->setEncryptionMethod(new BitLockerEncryptionMethod('aesCbc256'));

$bitLockerRemovableDrivePolicy->setRequireEncryptionForWriteAccess(true);

$bitLockerRemovableDrivePolicy->setBlockCrossOrganizationWriteAccess(true);


$requestBody->setBitLockerRemovableDrivePolicy($bitLockerRemovableDrivePolicy);


$result = $graphServiceClient->deviceManagement()->deviceConfigurations()->byDeviceConfigurationId('deviceConfiguration-id')->patch($requestBody);


```