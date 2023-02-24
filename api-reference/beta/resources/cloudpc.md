---
title: "cloudPC resource type"
description: "Cloud managed virtual desktops."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPC resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a cloud-managed virtual desktop. This Cloud PC is also enrolled into Intune and managed through the Microsoft Endpoint Manager portal, so the Cloud PC also has a corresponding Intune managed device ID.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List cloudPCs](../api/virtualendpoint-list-cloudpcs.md)|[cloudPC](../resources/cloudpc.md) collection|List properties and relationships of the [cloudPC](../resources/cloudpc.md) objects.|
|[Get cloudPC](../api/cloudpc-get.md)|[cloudPC](../resources/cloudpc.md)|Read the properties and relationships of a [cloudPC](../resources/cloudpc.md) object.|
|[Change user account type](../api/cloudpc-changeuseraccounttype.md)|None|Change the account type of the user on a specific Cloud PC.|
|[End grace period](../api/cloudpc-endgraceperiod.md)|None|End the grace period for a [cloudPC](../resources/cloudpc.md) object.|
|[Get remote action results](../api/manageddevice-getcloudpcremoteactionresults.md)|[cloudPcRemoteActionResult](../resources/cloudpcremoteactionresult.md)|Check the [Cloud PC-specified remote action results](../resources/cloudpcremoteactionresult.md) for a Cloud PC device.|
|[Power on](../api/cloudpc-poweron.md)|None|Power on specific [cloudPC](../resources/cloudpc.md) object. Cover Shift Work CloudPC for MEM admin scenarios.|
|[Power off](../api/cloudpc-poweroff.md)|None|Power off specific [cloudPC](../resources/cloudpc.md) object. Cover Shift Work CloudPC for MEM admin scenarios.|
|[Reboot](../api/cloudpc-reboot.md)|None|Reboot a specific [cloudPC](../resources/cloudpc.md) object.|
|[Rename](../api/cloudpc-rename.md)|None|Rename a specific [cloudPC](../resources/cloudpc.md) object. Use this API to update the **displayName** for the Cloud PC entity.|
|[Reprovision](../api/cloudpc-reprovision.md)|None|Reprovision a [cloudPC](../resources/cloudpc.md) object.|
|[Reprovision remote action](../api/manageddevice-reprovisioncloudpc.md)|None|Reprovision a Cloud PC with an Intune  [managed device](../resources/cloudpc.md) ID.|
|[Bulk reprovision remote action](../api/manageddevice-bulkreprovisioncloudpc.md)|None|Bulk reprovision a set of Cloud PC devices with Intune managed device IDs.|
|[Resize remote action](../api/manageddevice-resizecloudpc.md)|None|Upgrade or downgrade an existing Cloud PC to another configuration with new vCPU and storage size through Intune managed device ID.|
|[Troubleshoot](../api/cloudpc-troubleshoot.md)|None|Troubleshoot a specific [cloudPC](../resources/cloudpc.md) object. Use this API to check the health status of the Cloud PC and the session host.|
|[Restore](../api/cloudpc-restore.md)|None|Restore a [cloudPC](../resources/cloudpc.md) object to a previous state from a snapshot.|
|[Restore remote action](../api/manageddevice-restorecloudpc.md)|None|Restore a Cloud PC device to a previous state with an Intune [managed device](../resources/cloudpc.md) ID.|
|[Bulk restore remote action](../api/manageddevice-bulkrestorecloudpc.md)|[cloudPcBulkRemoteActionResult](../resources/cloudpcbulkremoteactionresult.md)|Restore multiple Cloud PC devices with a single request that includes the IDs of Intune managed devices and a restore point date and time.|
|[Set review status](../api/manageddevice-setcloudpcreviewstatus.md)|None|Set the review status of a specific Cloud PC device.|
|[Get review status](../api/manageddevice-getcloudpcreviewstatus.md)|[cloudPcReviewStatus](../resources/cloudpcreviewstatus.md)|Get the review status of a specific Cloud PC device.|
|[Bulk set review status](../api/manageddevice-bulksetcloudpcreviewstatus.md)|[cloudPcBulkRemoteActionResult](../resources/cloudpcbulkremoteactionresult.md)|Set the review status of multiple Cloud PC devices with a single request that includes the IDs of Intune managed devices.|
|[List for user](../api/user-list-cloudpcs.md)|[cloudPC](../resources/cloudpc.md) collection|List the [cloudPC](../resources/cloudpc.md) devices that are attributed to the signed-in user.|
|[Get launch info for user](../api/cloudpc-getcloudpclaunchinfo.md)|[cloudPCLaunchInfo](../resources/cloudpclaunchinfo.md)|Get the [cloudPCLaunchInfo](../resources/cloudpclaunchinfo.md) for the signed-in user.|
|[Get connectivity history](../api/cloudpc-getcloudpcconnectivityhistory.md)|[cloudPcConnectivityEvent](../resources/cloudpcconnectivityevent.md) collection|Get the Cloud PC connectivity history.|
|[Get supported remote actions](../api/cloudpc-getsupportedcloudpcremoteactions.md)|[cloudPcRemoteActionCapability](../resources/cloudpcremoteactioncapability.md) collection|Get a list of supported Cloud PC remote actions for a specific Cloud PC device, including the action names and capabilities.|
|[Retry partner agent installation](../api/cloudpc-retrypartneragentinstallation.md)|None|Retry installation for the partner agents which failed to install on the [cloudPC](../resources/cloudpc.md).|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|aadDeviceId|String|The Azure Active Directory (Azure AD) device ID of the Cloud PC.|
|connectivityResult|[cloudPcConnectivityResult](../resources/cloudpcconnectivityresult.md)|The connectivity health check result of a Cloud PC, including the updated timestamp and whether the Cloud PC is able to be connected or not.|
|diskEncryptionState|[cloudPcDiskEncryptionState](#cloudpcdiskencryptionstate-values)|The disk encryption applied to the Cloud PC. Possible values: `notAvailable`, `notEncrypted`, `encryptedUsingPlatformManagedKey`, `encryptedUsingCustomerManagedKey`, and `unknownFutureValue`.|
|displayName|String|The display name of the Cloud PC.|
|gracePeriodEndDateTime|DateTimeOffset|The date and time when the grace period ends and reprovisioning/deprovisioning happens. Required only if the status is `inGracePeriod`. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|id|String|The unique identifier for the Cloud PC. Read-only.|
|imageDisplayName|String|Name of the OS image that's on the Cloud PC.|
|lastLoginResult|[cloudPcLoginResult](../resources/cloudpcloginresult.md)|The last login result of the Cloud PC. For example, `{ "time": "2014-01-01T00:00:00Z"}`.|
|lastModifiedDateTime|DateTimeOffset|The last modified date and time of the Cloud PC. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|lastRemoteActionResult|[cloudPcRemoteActionResult](../resources/cloudpcremoteactionresult.md)|The last remote action result of the enterprise Cloud PCs. The supported remote actions are: `Reboot`, `Rename`, `Reprovision`, `Restore`, and `Troubleshoot`.|
|managedDeviceId|String|The Intune device ID of the Cloud PC.|
|managedDeviceName|String|The Intune device name of the Cloud PC.|
|onPremisesConnectionName|String|The Azure network connection that is applied during the provisioning of Cloud PCs.|
|osVersion|[cloudPcOperatingSystem](../resources/cloudpcorganizationsettings.md#cloudpcoperatingsystem-values)|The version of the operating system (OS) to provision on Cloud PCs. Possible values are: `windows10`, `windows11`, and `unknownFutureValue`.|
|provisioningPolicyId|String|The provisioning policy ID of the Cloud PC.|
|provisioningPolicyName|String|The provisioning policy that is applied during the provisioning of Cloud PCs.|
|partnerAgentInstallResults|[cloudPcPartnerAgentInstallResult](../resources/cloudpcpartneragentinstallresult.md) collection|The results of every partner agent's installation status on Cloud PC.|
|servicePlanId|String|The service plan ID of the Cloud PC.|
|servicePlanName|String|The service plan name of the Cloud PC.|
|servicePlanType|[cloudPcServicePlanType](../resources/cloudpcserviceplan.md#cloudpcserviceplantype-values)|The service plan type of the Cloud PC.|
|status|[cloudPcStatus](#cloudpcstatus-values)|The status of the Cloud PC. Possible values are: `notProvisioned`, `provisioning`, `provisioned`, `upgrading`, `inGracePeriod`, `deprovisioning`, `failed`, `restoring`.|
|statusDetails|[cloudPcStatusDetails](../resources/cloudpcstatusdetails.md)|The details of the Cloud PC status.|
|userAccountType|[cloudPcUserAccountType](../resources/cloudpcorganizationsettings.md#cloudpcuseraccounttype-values)|The account type of the user on provisioned Cloud PCs. Possible values are: `standardUser`, `administrator`, and `unknownFutureValue`.|
|userPrincipalName|String|The user principal name (UPN) of the user assigned to the Cloud PC.|

### cloudPcDiskEncryptionState values

|Member|Description|
|:---|:---|
|notAvailable|The Cloud PC is not provisioned, or is in a state where encryption is not available.|
|notEncrypted|The Cloud PC should be encrypted, but the encryption is not done yet (reserved, should not happen).|
|encryptedUsingPlatformManagedKey|The Cloud PC is encrypted using a platform managed key. This is the default value if the customer-managed key is not enabled.|
|encryptedUsingCustomerManagedKey|The Cloud PC is encrypted using the customer-managed key.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

### cloudPcStatus values

|Member|Description|
|:---|:---|
|notProvisioned|The Cloud PC hasn’t been provisioned.|
|provisioning|Cloud PC provisioning is in progress.|
|provisioned|The Cloud PC is provisioned and can be accessed by end users.|
|inGracePeriod|The Cloud PC is in the one week grace period before it’s deprovisioned.|
|deprovisioning|The Cloud PC is deprovisioning.|
|failed|The operation on Cloud PC has failed.|
|provisionedWithWarnings|The Cloud PC is provisioned and can be accessed by end users but with some warnings. The user can continue to use this Cloud PC.|
|resizing|The Cloud PC is resizing.|
|pendingProvision|The provisioning is pending on the Cloud PC. In this case, the number of Cloud PCs in grace period is more than the number of total available licenses. |
|restoring|The Cloud PC is restoring.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPC",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPC",
  "id": "String (identifier)",
  "displayName": "String",
  "imageDisplayName": "String",
  "aadDeviceId": "String",
  "managedDeviceId": "String",
  "managedDeviceName": "String",
  "provisioningPolicyId": "String",
  "provisioningPolicyName": "String",
  "partnerAgentInstallResults": "String",
  "onPremisesConnectionName": "String",
  "servicePlanId": "String",
  "servicePlanType": "String",
  "servicePlanName": "String",
  "status": "String",
  "userPrincipalName": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "gracePeriodEndDateTime": "String (timestamp)",
  "userAccountType": "String",
  "osVersion": "String",
  "lastRemoteActionResult": "String",
  "lastLoginResult": "String",
  "connectivityResult": "String",
  "diskEncryptionState": "String"
}
```
