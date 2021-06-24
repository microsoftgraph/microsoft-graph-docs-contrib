---
title: "cloudPcOnPremisesConnectionHealthCheck resource type"
description: "The result of a cloud PC on-premises connection health check."
author: "AshleyYangSZ"
localization_priority: Normal
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcOnPremisesConnectionHealthCheck resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The result of a cloud PC on-premises connection health check.

[!INCLUDE [cloudpc-api-preview](../../includes/cloudpc-api-preview.md)]

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[RunHealthChecks of cloudPcOnPremisesConnection](../api/cloudpconpremisesconnection-runhealthcheck.md)|None|Run the health checks of a [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md).|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name for this health check item.|
|status|[cloudPcOnPremisesConnectionStatus](../resources/cloudpconpremisesconnection.md#cloudpconpremisesconnectionstatus-values)|The status of the health check item. Possible values are: `pending`, `running`, `passed`, `failed`, `unknownFutureValue`. Read-only.|
|startDateTime|DateTimeOffset|The start time of the health check item. Read-only.|
|endDateTime|DateTimeOffset|The end time of the health check item. Read-only.|
|errorType|[cloudPcOnPremisesConnectionHealthCheckErrorType](#cloudpconpremisesconnectionhealthcheckerrortype-values)|The type of error that occurred during this health check.|
|recommendedAction|String|The recommended action to fix the corresponding error.|
|additionalDetails|String|Additional details about the health check or the recommended action.|

### cloudPcOnPremisesConnectionHealthCheckErrorType values

|Member|Description|
|:---|:---|
|dnsCheckFqdnNotFound|The DNS resolution failed for the domain name. Possible error causes: 1.The specified Azure vNet's DNS server can't resolve the domain name. Please update the vNet with an appropriate DNS server; 2.The domain name provided doesn't exist or isn't correct. Please update the on-premises network connection with the correct domain name. Please Make sure that the vNet defined in the on-premises network connection can resolve the domain name.|
|dnsCheckUnknownError|The DNS resolution failed for the domain name. Possible error causes: 1.The specified Azure vNet's DNS server can't resolve the domain name. Please update the vNet with an appropriate DNS server; 2.The domain name provided doesn't exist or isn't correct. Please update the on-premises network connection with the correct domain name. Please Make sure that the vNet defined in the on-premises network connection can resolve the domain name.|
|adJoinCheckFqdnNotFound|While attempting domain join, the domain name could not be found. Please make sure a domain controller for the domain name can be contacted by the vNet defined in the on-premises network connection.|
|adJoinCheckIncorrectCredentials|While attempting domain join, credentials provided for the domain are not correct. Please update the on-premises network connection with correct credentials.|
|adJoinCheckOrganizationalUnitNotFound|While attempting domain join, the Organizational Unit can't be found. Please provide an OU in the domain. The OU must be in Distinguished Name format. Example format: “OU=OU1,OU=OU2,OU=OU3,DC=DC1”.|
|adJoinCheckOrganizationalUnitIncorrectFormat|While attempting domain join, the Organizational Unit can't be found. Please provide an OU in the domain. The OU must be in Distinguished Name format. Example format: “OU=OU1,OU=OU2,OU=OU3,DC=DC1”.|
|adJoinCheckAccessDenied|While attempting domain join, the user account provided doesn't have sufficient permissions to join the domain. Please make sure that the account provided has sufficient permissions, or change the user account defined in the on-premises network connection properties. Permissions needed: Create computer objects, Delete computer objects.|
|adJoinCheckUnknownError|An unknown error occurred when trying to join the domain. Please make sure that the on-premises network connection can successfully join the domain using the details provided.|
|endpointConnectivityCheckCloudPcUrlNotAllowListed|During provisioning, a required URL/s couldn't be contacted. Please make sure that all of the required URL’s are allowed through the firewalls and proxies.|
|endpointConnectivityCheckWVDUrlNotAllowListed|During provisioning, a required WVD URL/s couldn't be contacted. Please make sure that all of the required URL's are allowed through the firewalls and proxies.|
|endpointConnectivityCheckIntuneUrlNotAllowListed|During provisioning, a required Intune URL/s couldn’t be contacted. Please make sure that all of the required URL's are allowed through the firewalls and proxies.|
|endpointConnectivityCheckUnknownError|During provisioning, a required URL/s couldn't be contacted. Please make sure that all of the required URL's are allowed through the firewalls and proxies.|
|azureAdDeviceSyncCheckDeviceNotFound|The cloud PC computer object can't be found in Azure Active Directory. Please make sure that Azure AD connect is working and syncing frequently so that the cloud PC computer objects are synced to Azure AD. Azure AD device sync must be enabled and synced within the last 60 minutes.|
|azureAdDeviceSyncCheckLongSyncCircle|Checking whether the cloud PC computer object has been synced to Azure Active Directory has timed out. Please make sure that Azure AD connect is working and syncing frequently so that the cloud PC computer objects are synced to Azure AD. Azure AD device sync must be enabled and synced within the last 60 minutes.|
|azureAdDeviceSyncCheckUnknownError|Hybrid Azure Active Directory connectivity check failed. Please make sure that Azure AD connect is working and syncing frequently so that the cloud PC computer objects are synced to Azure AD. Azure AD device sync must be enabled and synced within the last 60 minutes.|
|resourceAvailabilityCheckNoSubnetIP|The subnet provided doesn't have IP addresses available. Please make sure that the subnet provided in the on-premises network connection has sufficient IP addresses available. Please expand the current selected subnet, or select a different subnet to be used for provisioning.|
|resourceAvailabilityCheckSubscriptionDisabled|The Azure subscription provided is disabled. Please make sure that the Azure subscription is enabled and available for provisioning.|
|resourceAvailabilityCheckAzurePolicyViolation|The Azure subscription provided cannot be found. Please ensure the Azure subscription is available for provisioning.|
|resourceAvailabilityCheckUnsupportedVNetRegion|The selected vNet is located in an unsupported region. Please ensure that the selected vNet is located in a supported region.|
|resourceAvailabilityCheckUnknownError|An unknown error occurred while checking Azure resources. Please ensure that all Azure resources meet prerequisites.|
|permissionCheckNoSubscriptionReaderRole|Cloud PC service principal doesn't have sufficient permissions on the Azure subscription. Please make sure that cloud PC service principal has the Reader permissions on the subscription.|
|permissionCheckNoResourceGroupOwnerRole|Cloud PC service principal doesn't have sufficient permissions on the Azure resource group. Please make sure that cloud PC service principal has the Owner permissions on the resource group. |
|permissionCheckNoVNetContributorRole|Cloud PC service principal doesn't have sufficient permissions on the Azure vNet. Please make sure that cloud PC service has the Network contributor permissions on the vNet.|
|permissionCheckUnknownError|Cloud PC service principal doesn't have sufficient permissions. Please make sure that cloud PC service principal is granted sufficient Azure permissions.|
|internalServerErrorDeploymentCanceled|The deployment was canceled. Please try again later. If the problem persists, please contact support.|
|internalServerErrorAllocateResourceFailed|The allocation of resources failed. Please try again later. If the problem persists, please contact support.|
|internalServerErrorVMDeploymentTimeout|The virtual machine deployment timed out. Please try again later. If the problem persists, please contact support.|
|internalServerErrorUnableToRunDscScript|During provisioning, some PowerShell DSC scripts are executed on the cloud PC. Unable to either download these DSC scripts or execute them during the health check. Please ensure vNet has unrestricted access to the required endpoints, and PowerShell is not blocked in the environment or Group Policy.|
|internalServerUnknownError|Provisioning has failed due to an internal error. Please contact customer support.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
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
  "additionalDetails": "String"
}
```
