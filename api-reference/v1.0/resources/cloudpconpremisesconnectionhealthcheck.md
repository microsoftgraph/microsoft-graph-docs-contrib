---
title: "cloudPcOnPremisesConnectionHealthCheck resource type"
description: "The result of a Cloud PC Azure network connection health check."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcOnPremisesConnectionHealthCheck resource type

Namespace: microsoft.graph

The result of a Cloud PC Azure network connection health check.

[!INCLUDE [on-premise-rename-note](../../includes/on-premise-rename-note.md)]

## Properties

|Property|Type|Description|
|:---|:---|:---|
|additionalDetail|String|Additional details about the health check or the recommended action. For exmaple, the string value can be download.microsoft.com:443;software-download.microsoft.com:443; Read-only.|
|correlationId|String|The unique identifier of the health check item-related activities. This identifier can be useful in troubleshooting.|
|displayName|String|The display name for this health check item.|
|endDateTime|DateTimeOffset|The value cannot be modified and is automatically populated when the health check ends. The Timestamp type represents date and time information using ISO 8601 format and is in Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2024 would look like this: '2024-01-01T00:00:00Z'. Returned by default. Read-only.|
|errorType|[cloudPcOnPremisesConnectionHealthCheckErrorType](#cloudpconpremisesconnectionhealthcheckerrortype-values)|The type of error that occurred during this health check. Possible values are: endpointConnectivityCheckCloudPcUrlNotAllowListed, endpointConnectivityCheckWVDUrlNotAllowListed, etc. (The all possible values can refer to cloudPcOnPremisesConnectionHealthCheckErrorType) Read-Only.|
|recommendedAction|String|The recommended action to fix the corresponding error. For example, The Active Directory domain join check failed because the password of the domain join user has expired. Read-Only.|
|startDateTime|DateTimeOffset|The value cannot be modified and is automatically populated when the health check starts. The Timestamp type represents date and time information using ISO 8601 format and is in  Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2024 would look like this: '2024-01-01T00:00:00Z'. Returned by default. Read-only.|
|status|[cloudPcOnPremisesConnectionStatus](../resources/cloudpconpremisesconnection.md#cloudpconpremisesconnectionstatus-values)|The status of the health check item. Possible values are: `pending`, `running`, `passed`, `failed`, `warning`, `informational`, `unknownFutureValue`. Read-only.|

### cloudPcOnPremisesConnectionHealthCheckErrorType values

|Member|Description|
|:---|:---|
|adJoinCheckAccessDenied|The domain join check failed because the user account provided doesn't have sufficient permissions to join the domain. Make sure that the account provided has sufficient permissions or change the user account defined in the Azure network connection properties. Permissions needed: *Create computer objects* and *Delete computer objects*.|
|adJoinCheckAccountLockedOrDisabled|The domain join user check failed due to an issue with the domain join user account, which is currently locked out or disabled. Make sure that the domain join user account is both unlocked and active, and that it can successfully authenticate to the domain.|
|adJoinCheckAccountQuotaExceeded|The domain join check failed because the domain join user exceeded the maximum domain join. Make sure that the domain join is allowed and the **ms-DS-MachineAccountQuota** Active Directory property allows sufficient domain joins.|
|adJoinCheckComputerObjectAlreadyExists|The computer account can't be found in the organizational unit (OU) provided in the Azure network connection, but the computer name already exists in the domain. It often occurs after the computer object is moved out of the OU configured in the Azure network connection. move the computer object back to the target OU.|
|adJoinCheckCredentialsExpired|The domain join check failed because the password of the domain join user has expired. First, update the password and then update the Azure network connection with the new credentials.|
|adJoinCheckFqdnNotFound|The domain join check failed because the domain name couldn't be found. Make sure a domain controller for the domain name can be contacted by the vNet defined in the Azure network connection.|
|adJoinCheckIncorrectCredentials|The domain join check failed because the credentials provided for the domain aren't correct. Update the Azure network connection with the correct credentials.|
|adJoinCheckOrganizationalUnitIncorrectFormat|The domain join check failed because the organizational unit (OU) can't be found. Provide an OU in the domain. The OU must be in a distinguished name format. Example format: “OU=OU1,OU=OU2,OU=OU3,DC=DC1”.|
|adJoinCheckOrganizationalUnitNotFound|The domain join check failed because the organizational unit (OU) can't be found. Provide an OU in the domain. The OU must be in a distinguished name format. Example format: “OU=OU1,OU=OU2,OU=OU3,DC=DC1”.|
|adJoinCheckServerNotOperational|The active domain join check failed because the server is not operational. This failure could be due to network connectivity issues, DNS resolution issues, or problems with the domain controller itself. Make sure that the domain controller is running and that ports that are required to be open between the client computer and the domain controller are enabled and not blocked.|
|adJoinCheckUnknownError|The domain join check failed due to an unknown error. Make sure that the Azure network connection can successfully join the domain using the details provided.|
|azureAdDeviceSyncCheckConnectDisabled|The Microsoft Entra device sync check failed because the Microsoft Entra Connect is disabled. Make sure that Microsoft Entra Connect is enabled and that it syncs frequently. If the Microsoft Entra Connect doesn't sync the computer within 60 minutes, then the check fails.|
|azureAdDeviceSyncCheckDeviceNotFound|The Cloud PC object can't be found in Microsoft Entra ID. Make sure that Microsoft Entra Connect works and syncs frequently so that the Cloud PC objects are synced to Microsoft Entra ID. Microsoft Entra device sync must be enabled and synced within the last 60 minutes.|
|azureAdDeviceSyncCheckDurationExceeded|The Microsoft Entra device sync check failed because the Microsoft Entra Connect Sync didn't sync within 60 minutes. Make sure that Microsoft Entra Connect is enabled and that it syncs frequently. If the Microsoft Entra Connect doesn't sync the computer within 60 minutes, then the check fails.|
|azureAdDeviceSyncCheckLongSyncCircle|The check whether the Cloud PC object has been synced to Microsoft Entra ID has timed out. Make sure that Microsoft Entra Connect works and syncs frequently so that the Cloud PC objects are synced to Microsoft Entra ID. Microsoft Entra device sync must be enabled and synced within the last 60 minutes.|
|azureAdDeviceSyncCheckScpNotConfigured|The Microsoft Entra hybrid join failed due to misconfiguration in the Service Configuration Point (SCP). Make sure that your SCP configuration is valid and available to perform a Microsoft Entra hybrid join. Your SCP can be created and configured in the Microsoft Entra Connect wizard.|
|azureAdDeviceSyncCheckTransientServiceError|The Microsoft Entra device sync check failed due to a transient error. Try it again. If the issue persists, contact customer support.|
|azureAdDeviceSyncCheckUnknownError|Hybrid Microsoft Entra connectivity check failed. Make sure that Microsoft Entra Connect works and syncs frequently so that the Cloud PC objects are synced to Microsoft Entra ID. Microsoft Entra device sync must be enabled and synced within the last 60 minutes.|
|dnsCheckFqdnNotFound|The DNS resolution failed for the domain name. Possible error causes: 1. The specified Azure vNet's DNS server can't resolve the domain name. Update the vNet with an appropriate DNS server; 2. The domain name provided doesn't exist or isn't correct. Update the Azure network connection with the correct domain name. Make sure that the vNet defined in the Azure network connection can resolve the domain name.|
|dnsCheckNameWithInvalidCharacter|The DNS check failed because the domain name entered contains an unsupported character. Make sure the domain name only contains supported characters.|
|dnsCheckUnknownError|The DNS resolution failed for the domain name. Possible error causes: 1. The specified Azure vNet's DNS server can't resolve the domain name. Update the vNet with an appropriate DNS server; 2. The domain name provided doesn't exist or isn't correct. Update the Azure network connection with the correct domain name. Make sure that the vNet defined in the Azure network connection can resolve the domain name.|
|endpointConnectivityCheckAzureADUrlNotAllowListed|During provisioning, one or more required Microsoft Entra URLs couldn't be contacted. Make sure that all of the required URLs are allowed through the firewalls and proxies.|
|endpointConnectivityCheckCloudPcUrlNotAllowListed|During provisioning, one or more required URLs couldn't be contacted. Make sure that all of the required URLs are allowed through the firewalls and proxies.|
|endpointConnectivityCheckIntuneUrlNotAllowListed|During provisioning, one or more required Intune URLs couldn't be contacted. Make sure that all of the required URLs are allowed through the firewalls and proxies.|
|endpointConnectivityCheckLocaleUrlNotAllowListed|During provisioning, one or more language pack URLs couldn't be contacted. If you choose a non-English (United States) **Language & Region** setting in a provisioning policy, the language pack might not be successfully installed. Make sure that all of the required URLs are allowed through your firewalls and proxies. For a list or required URLs, see [Azure network connections health checks](https://go.microsoft.com/fwlink/?linkid=2156206).|
|endpointConnectivityCheckUnknownError|During provisioning, one or more required URLs couldn't be contacted. Make sure that all of the required URLs are allowed through the firewalls and proxies.|
|endpointConnectivityCheckWVDUrlNotAllowListed|During provisioning, one or more required WVD URLs couldn't be contacted. Make sure that all of the required URLs are allowed through the firewalls and proxies.|
|groupPolicySettingCheckFailed|Group Policy configuration exits that will cause provisioning failures. Ensure the following settings are not targeted to the Cloud PC’s: 1.Bitlocker Removable Disks: Deny write access to removable drives not protected by BitLocker. 2.Bitlocker fixed Disks: Deny write access to fixed drives not protected by BitLocker. 3.Network access: Do not allow storage of passwords and credentials for network authentication.|
|groupPolicySettingCheckUnknownError|The Group Policy configuration check failed due to an unknown error. Please contact Customer Support.|
|permissionCheckNoResourceGroupNetworkContributorRole|Cloud PC service principal doesn't have sufficient permissions on the Azure resource group. Make sure that the  application has Network contributor permissions on the resource group.|
|permissionCheckNoResourceGroupOwnerRole|The Cloud PC service principal doesn't have sufficient permissions on the Azure resource group. Make sure that the Cloud PC service principal has the *Owner* permissions on the resource group. |
|permissionCheckNoSubscriptionReaderRole|The Cloud PC service principal doesn't have sufficient permissions on the Azure subscription. Make sure that the Cloud PC service principal has the *Reader* permissions on the subscription.|
|permissionCheckNoVNetContributorRole|The Cloud PC service principal doesn't have sufficient permissions on the Azure virtual network. Make sure that the Cloud PC service has the *Network contributor* permissions on the virtual network.|
|permissionCheckNoWindows365NetworkInterfaceContributorRole|Cloud PC service principal does not have Windows 365 network interface contributor role on the specified resource group. Work with the subscription owner to add Windows 365 network interface contributor role assignment on the resource group for the Cloud PC service principal.|
|permissionCheckNoWindows365NetworkUserRole|Cloud PC service principal does not have Windows 365 network user role on the specified virtual network. Work with the subscription owner to add the Windows 365 network user role assignment for the Cloud PC service principal.|
|permissionCheckTransientServiceError|The first-party app permission check failed due to a transient error. Try it again. If the issue persists, contact customer support.|
|permissionCheckUnknownError|The Cloud PC service principal doesn't have sufficient permissions. Make sure that the Cloud PC service principal is granted sufficient Azure permissions.|
|resourceAvailabilityCheckAzurePolicyViolation|The Azure subscription provided can't be found. Make sure that the Azure subscription is available for provisioning.|
|resourceAvailabilityCheckDeploymentQuotaLimitReached|The resource group used by the Azure network connection has been locked for delete actions and has hit the deployment history quota limit. Remove this lock to allow Windows 365 service to delete obsolete virtual network adapters.|
|resourceAvailabilityCheckGeneralSubscriptionError|An Azure policy is restricting the creation of resources. Make sure that no Azure policy restricts creating resources in the subscription and/or resource group.|
|resourceAvailabilityCheckIntuneDefaultWindowsRestrictionViolation| Intune has a default Windows platform restriction policy, which can block you from provisioning.|
|resourceAvailabilityCheckIntuneCustomWindowsRestrictionViolation| Intune has a custom Windows platform restriction policy, which may block you from provisioning.|
|resourceAvailabilityCheckNoIntuneReaderRoleError|The Cloud PC service principal has insufficient permissions to check the Intune platform restriction settings. Make sure that the Cloud PC service principal has the *Reader* permissions on the subscription.|
|resourceAvailabilityCheckNoSubnetIP|The subnet provided doesn't have IP addresses available. Make sure that the subnet provided in the Azure network connection has sufficient IP addresses available. Expand the currently selected subnet or select a different subnet for provisioning.|
|resourceAvailabilityCheckResourceGroupBeingDeleted|The selected Azure resource group is being deleted. Make sure that the selected Azure resource group is available to provision resources. Alternatively, update this Azure network connection with another resource group.|
|resourceAvailabilityCheckResourceGroupInvalid|The selected Azure resource group is invalid or not found. Make sure that the selected Azure resource group is available to provision resources. Alternatively, update this Azure network connection with another resource group.|
|resourceAvailabilityCheckResourceGroupLockedForDelete|The selected resource group or its parent scope has been locked for delete actions. It might be because the IP addresses are used up. Remove the lock and try again.|
|resourceAvailabilityCheckResourceGroupLockedForReadonly|The selected resource group is locked and can't be modified for provisioning. Remove this lock to allow provisioning to succeed.|
|resourceAvailabilityCheckSubscriptionDisabled|The Azure subscription provided is disabled. Make sure that the Azure subscription is enabled and available for provisioning.|
|resourceAvailabilityCheckSubscriptionNotFound|The Azure subscription provided can't be accessed. Make sure that the Azure subscription is available for provisioning.|
|resourceAvailabilityCheckSubnetDelegationFailed|The selected Azure virtual network has subnet delegation, which blocks the creation of a network interface (Nic). Ask your Azure virtual network owner to modify their subnet delegation policy to allow provisioning to succeed.|
|resourceAvailabilityCheckSubnetInvalid|The selected Azure subnet is invalid. Make sure that the selected subnet is available and healthy. Alternatively, update this Azure network connection with another subnet.|
|resourceAvailabilityCheckSubnetWithExternalResources|The selected subnet can't be used because it contains external resources. Remove any resources that could cause conflicts and try again. Alternatively, update this Azure network connection with another subnet.|
|resourceAvailabilityCheckSubscriptionTransferred|The Azure subscription provided can't be accessed. Make sure that the Azure subscription is available for provisioning.|
|resourceAvailabilityCheckTransientServiceError|The resource availability check failed due to a transient error. Try it again. If the issue persists, contact customer support.|
|resourceAvailabilityCheckUnknownError|The resource availability check for Azure resources failed due to an unknown error. Ensure that all Azure resources meet the prerequisites.|
|resourceAvailabilityCheckUnsupportedVNetRegion|The selected vNet is located in an unsupported region. Make sure that the selected vNet is located in a supported region.|
|resourceAvailabilityCheckVNetBeingMoved|The selected Azure virtual network is being moved. Make sure that your virtual network isn't changing or being moved and try again. Alternatively, update this Azure network connection with another vNet.|
|resourceAvailabilityCheckVNetInvalid|The selected Azure virtual network is invalid. Make sure that the selected virtual network is available and healthy. Alternatively, update this Azure network connection with another virtual network.|
|udpConnectivityCheckStunUrlNotAllowListed|Your current network configuration doesn't allow UDP direct connect Session Traversal Utilities for NAT (STUN). This configuration doesn't prevent using Cloud PCs but can prevent optimal performance. Consider your network configuration policies before you apply changes.|
|udpConnectivityCheckTurnUrlNotAllowListed|Your current network configuration doesn't allow UDP direct connect Session Traversal Utilities for NAT (TURN). This configuration doesn't prevent using Cloud PCs but can prevent optimal performance. Consider your network configuration policies before you apply changes.|
|udpConnectivityCheckUnknownError|An unknown error occurred when checking UDP direct connect. Make sure your network configuration policies can allow UDP direct connection. |
|udpConnectivityCheckUrlsNotAllowListed|Your current network configuration doesn't allow UDP direct connect Session Traversal Utilities for NAT (STUN and TURN). This configuration doesn't prevent using Cloud PCs but can prevent optimal performance. Consider your network configuration policies before you apply changes.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|
|ssoCheckKerberosConfigurationError|The Microsoft Entra Kerberos is not configured properly, so the user failed to sign in to the Cloud PC through single sign-on (SSO) or receive SSO access to Kerberos-based resources on the network.|

## Relationships

None.

## JSON representation

Here's a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcOnPremisesConnectionHealthCheck"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcOnPremisesConnectionHealthCheck",
  "displayName": "String",
  "status": "String",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "errorType": "String",
  "recommendedAction": "String",
  "additionalDetail": "String",
  "correlationId": "String"
}
```
