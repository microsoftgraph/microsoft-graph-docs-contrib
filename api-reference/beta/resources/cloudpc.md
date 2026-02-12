---
title: "cloudPC resource type"
description: "Represents a cloud-managed virtual desktop."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 11/19/2024
---

# cloudPC resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a cloud-managed virtual desktop. This Cloud PC is also enrolled in Intune and managed through the Microsoft Endpoint Manager portal, so the Cloud PC also has a corresponding Intune-managed device ID.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List cloudPCs](../api/virtualendpoint-list-cloudpcs.md)|[cloudPC](../resources/cloudpc.md) collection|List properties and relationships of the Cloud PC objects.|
|[Get cloudPC](../api/cloudpc-get.md)|[cloudPC](../resources/cloudpc.md)|Read the properties and relationships of a Cloud PC object.|
|[Get provisioned Cloud PCs](../api/cloudpc-getprovisionedcloudpcs.md)|[cloudPC](../resources/cloudpc.md) collection|Get all provisioned Cloud PCs of a specific service plan for users under a Microsoft Entra user group.|
|[Change user account type](../api/cloudpc-changeuseraccounttype.md)|None|Change the account type of the user on a specific Cloud PC.|
|[End grace period](../api/cloudpc-endgraceperiod.md)|None|End the grace period for a Cloud PC object.|
|[Power on](../api/cloudpc-poweron.md)|None|Power on a specific Windows Frontline Cloud PC object. This action supports MEM admin scenarios.|
|[Power off](../api/cloudpc-poweroff.md)|None|Power off a specific  Windows Frontline Cloud PC object. This action supports MEM admin scenarios.|
|[Reboot](../api/cloudpc-reboot.md)|None|Reboot a specific Cloud PC object.|
|[Rename](../api/cloudpc-rename.md)|None|Rename a specific Cloud PC object. Use this API to update the **displayName** for the Cloud PC entity.|
|[Reprovision](../api/cloudpc-reprovision.md)|None|Reprovision a Cloud PC object.|
|[Resize](../api/cloudpc-resize.md)|None|Upgrade or downgrade an existing [Cloud PC](../resources/cloudpc.md) to a configuration with a new virtual CPU (vCPU) and storage size.|
|[Start](../api/cloudpc-start.md)|None|Start a specific Cloud PC. Currently, only Windows 365 Frontline Cloud PCs are supported. |
|[Stop](../api/cloudpc-stop.md)|None|Stop a specific Cloud. Currently, only Windows 365 Frontline Cloud PCs are supported. |
|[Troubleshoot](../api/cloudpc-troubleshoot.md)|None|Troubleshoot a specific Cloud PC object. Use this API to check the health status of the Cloud PC and the session host.|
|[Restore](../api/cloudpc-restore.md)|None|Restore a Cloud PC object to a previous state from a snapshot.|
|[Set review status](../api/cloudpc-setreviewstatus.md)|None|Set the review status of a specific Cloud PC device using the Cloud PC ID.|
|[Retrieve review status](../api/cloudpc-retrievereviewstatus.md)|[cloudPcReviewStatus](../resources/cloudpcreviewstatus.md)|Get the [review status](../resources/cloudpcreviewstatus.md) of a Cloud PC.|
|[Retrieve Cloud PC count by status](../api/cloudpc-retrievecloudpccountbystatus.md)|[cloudPcStatusSummary](../resources/cloudpcstatussummary.md) collection|Retrieve the [Cloud PC](../resources/cloudpc.md) count grouped by status.|
|[List for user](../api/user-list-cloudpcs.md)|[cloudPC](../resources/cloudpc.md) collection|List the Cloud PC devices that are attributed to the signed-in user.|
|[Retrieve launch detail](../api/cloudpc-retrievecloudpclaunchdetail.md)|[cloudPcLaunchDetail](../resources/cloudpclaunchdetail.md)|Get the [cloudPcLaunchDetail](../resources/cloudpclaunchdetail.md) for a specific Cloud PC that belongs to the current signed-in user.|
|[Get connectivity history](../api/cloudpc-getcloudpcconnectivityhistory.md)|[cloudPcConnectivityEvent](../resources/cloudpcconnectivityevent.md) collection|Get the Cloud PC connectivity history.|
|[Get supported remote actions](../api/cloudpc-getsupportedcloudpcremoteactions.md)|[cloudPcRemoteActionCapability](../resources/cloudpcremoteactioncapability.md) collection|Get a list of supported Cloud PC remote actions for a specific Cloud PC device, including the action names and capabilities.|
|[Retrieve remote action results](../api/cloudpc-retrievecloudpcremoteactionresults.md)|[cloudPcRemoteActionResult](../resources/cloudpcremoteactionresult.md) collection|Retrieve [remote action results](../resources/cloudpcremoteactionresult.md) and check the status of a specific remote action performed on the associated Cloud PC device.|
|[Retry partner agent installation](../api/cloudpc-retrypartneragentinstallation.md)|None|Retry installation for the partner agents that failed to install on the Cloud PC.|
|[Validate bulk resize](../api/cloudpc-validatebulkresize.md)|[cloudPcResizeValidateResult](../resources/cloudPcResizeValidationResult.md) collection|Validate that a set of Cloud PC devices meet the requirements to be bulk resized.|
|[Create snapshot](../api/cloudpc-createsnapshot.md)|None|Create a snapshot for a specific Cloud PC device.|
|[Retrieve snapshots](../api/cloudpc-retrievesnapshots.md)|[cloudPcSnapshot](../resources/cloudpcsnapshot.md) collection|Get a list of [cloudPcSnapshot](../resources/cloudpcsnapshot.md) resources for a Cloud PC.|
|[Get frontline access state](../api/cloudpc-getfrontlinecloudpcaccessstate.md)|[frontlineCloudPcAccessState](#frontlinecloudpcaccessstate-values)|Get the access state of the frontline Cloud PC. The possible values are: `unassigned`, `noLicensesAvailable`, `activationFailed`, `active`, `activating`, `standbyMode`, `unknownFutureValue`. The `noLicensesAvailable` member is deprecated and stopped returning on September 30, 2024.|
|[Get launch info (deprecated)](../api/cloudpc-getcloudpclaunchinfo.md)|[cloudPcLaunchInfo](../resources/cloudpclaunchinfo.md)|Get the [cloudPCLaunchInfo](../resources/cloudpclaunchinfo.md) for a specific Cloud PC that belongs to the current signed-in user. This API is deprecated and will stop returning data on October 30, 2026. Going forward, use the [Retrieve launch detail](../api/cloudpc-retrievecloudpclaunchdetail.md) API.|
|[Retrieve frontline Cloud PC detail](../api/cloudpc-retrievefrontlinecloudpcdetail.md)|[frontlineCloudPcDetail](../resources/frontlinecloudpcdetail.md)|Get the [frontlineCloudPcDetail](../resources/frontlinecloudpcdetail.md) of a frontline [Cloud PC](../resources/cloudpc.md).
## Properties

|Property|Type|Description|
|:---|:---|:---|
|aadDeviceId|String|The Microsoft Entra device ID of the Cloud PC.|
|allotmentDisplayName|String|The allotment name divides tenant licenses into smaller batches or groups that help restrict the number of licenses available for use in a specific assignment. When the **provisioningType** is `dedicated`, the allotment name is `null`. Read-only.|
|connectivityResult|[cloudPcConnectivityResult](../resources/cloudpcconnectivityresult.md)|The connectivity health check result of a Cloud PC, including the updated timestamp and whether the Cloud PC can be connected.|
|deviceRegionName|String|The name of the geographical region where the Cloud PC is currently provisioned. For example, `westus3`, `eastus2`, and `southeastasia`. Read-only.|
|disasterRecoveryCapability|[cloudPcDisasterRecoveryCapability](../resources/cloudpcdisasterrecoverycapability.md)|The disaster recovery status of the Cloud PC, including the primary region, secondary region, and capability type. The default value is `null` that indicates that the disaster recovery setting is disabled. To receive a response with the **disasterRecoveryCapability** property, `$select` and `$filter` it by `disasterRecoveryCapability/{subProperty}` in the request URL. For more information, see [Example 3: List Cloud PCs filtered by disaster recovery capability type](../api/virtualendpoint-list-cloudpcs.md#example-3-list-cloud-pcs-filtered-by-disaster-recovery-capability-type). Read-only. |
|diskEncryptionState|[cloudPcDiskEncryptionState](#cloudpcdiskencryptionstate-values)|The disk encryption applied to the Cloud PC. Possible values: `notAvailable`, `notEncrypted`, `encryptedUsingPlatformManagedKey`, `encryptedUsingCustomerManagedKey`, and `unknownFutureValue`.|
|displayName|String|The display name of the Cloud PC.|
|gracePeriodEndDateTime|DateTimeOffset|The date and time when the grace period ends and reprovisioning or deprovisioning happens. Required only if the status is `inGracePeriod`. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|groupDetail|[cloudPcEntraGroupDetail](../resources/cloudpcentragroupdetail.md)|The Microsoft Entra group details (for example, ID and display name) for the Entra ID group associated with the user's Reserve Cloud PC assignment. Read-only.|
|id|String|The unique identifier for the Cloud PC. Read-only.|
|imageDisplayName|String|Name of the OS image that's on the Cloud PC.|
|lastLoginResult|[cloudPcLoginResult](../resources/cloudpcloginresult.md)|The last login result of the Cloud PC. For example, `{ "time": "2014-01-01T00:00:00Z"}`.|
|lastModifiedDateTime|DateTimeOffset|The last modified date and time of the Cloud PC. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014, is `2014-01-01T00:00:00Z`.|
|lastRemoteActionResult|[cloudPcRemoteActionResult](../resources/cloudpcremoteactionresult.md)|The last remote action result of the enterprise Cloud PCs. The supported remote actions are: `Reboot`, `Rename`, `Reprovision`, `Restore`, `Troubleshoot`.|
|managedDeviceId|String|The Intune device ID of the Cloud PC.|
|managedDeviceName|String|The Intune device name of the Cloud PC.|
|onPremisesConnectionName|String|The Azure network connection that is applied during the provisioning of Cloud PCs.|
|osVersion|[cloudPcOperatingSystem](../resources/cloudpcorganizationsettings.md#cloudpcoperatingsystem-values)|The version of the operating system (OS) to provision on Cloud PCs. The possible values are: `windows10`, `windows11`, `unknownFutureValue`.|
|partnerAgentInstallResults|[cloudPcPartnerAgentInstallResult](../resources/cloudpcpartneragentinstallresult.md) collection|The results of every partner agent's installation status on Cloud PC.|
|powerState|[cloudPcPowerState](#cloudpcpowerstate-values)|The power state of a Cloud PC. The possible values are: `running`, `poweredOff`, `unknown`. This property only supports shift work Cloud PCs.|
|productType|[cloudPcProductType](#cloudpcproducttype-values)|The product type of the Cloud PC. The possible values are: `enterprise`, `frontline`, `devBox`, `powerAutomate`, `business`, `unknownFutureValue`. For the available service plans and pricing for `enterprise`, `frontline`, and `business`, see [Windows 365 for business](https://www.microsoft.com/windows-365). For pricing information for `devBox`, see [Microsoft Dev Box pricing](https://azure.microsoft.com/pricing/details/dev-box#pricing). For the available plans and pricing for `powerAutomate`, see [Power Automate pricing](https://www.microsoft.com/en-us/power-platform/products/power-automate/pricing#compare-plans). The default value is `enterprise`. Supports `$filter` and `$select`. For more information, see [Example 4: List Cloud PCs filtered by product type](../api/virtualendpoint-list-cloudpcs.md#example-4-list-cloud-pcs-filtered-by-product-type). Read-only. |
|provisionedDateTime|DateTimeOffset|The latest provisioned date and time, automatically generated and assigned during the initial provisioning or any subsequent reprovisioning of the Cloud PC. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|provisioningPolicyId|String|The provisioning policy ID of the Cloud PC.|
|provisioningPolicyName|String|The provisioning policy that is applied during the provisioning of Cloud PCs.|
|provisioningType|[cloudPcProvisioningType](../resources/cloudpcprovisioningpolicy.md#cloudpcprovisioningtype-values)|The type of licenses to be used when provisioning Cloud PCs using this policy. The possible values are: `dedicated`, `shared`, `unknownFutureValue`, `sharedByUser`, `sharedByEntraGroup`, `reserve`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `sharedByUser`, `sharedByEntraGroup`, `reserve`. The default value is `dedicated`. The `shared` member is deprecated and will stop returning on April 30, 2027; going forward, use the `sharedByUser` member. |
|servicePlanId|String|The service plan ID of the Cloud PC.|
|servicePlanName|String|The service plan name of the Cloud PC.|
|servicePlanType|[cloudPcServicePlanType](../resources/cloudpcserviceplan.md#cloudpcserviceplantype-values)|The service plan type of the Cloud PC.|
|sharedDeviceDetail|[cloudPcFrontlineSharedDeviceDetail](../resources/cloudpcfrontlineshareddevicedetail.md)|Indicates the Cloud PC device details associated with the frontline shared service plan, including the user's UPN and the session start date and time.|
|status|[cloudPcStatus](#cloudpcstatus-values)|The status of the Cloud PC. The possible values are: `notProvisioned`, `provisioning`, `provisioned`, `inGracePeriod`, `deprovisioning`, `failed`, `provisionedWithWarnings`, `resizing`, `restoring`, `pendingProvision`, `unknownFutureValue`, `movingRegion`, `resizePendingLicense`, `modifyingSingleSignOn`, `refreshPolicyConfiguration`, and `preparing`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `movingRegion`, `resizePendingLicense`, `modifyingSingleSignOn`, `refreshPolicyConfiguration`, and `preparing`.|
|statusDetail|[cloudPcStatusDetail](../resources/cloudpcstatusdetail.md)|Indicates the detailed status associated with Cloud PC, including error/warning code, error/warning message, additionalInformation. For example, `{ "code": "internalServerError", "message": "There was an error during the Cloud PC upgrade. Please contact support.", "additionalInformation": null }`. |
|connectionSetting|[cloudPcConnectionSetting](../resources/cloudpcconnectionsetting.md)|The connection setting of the Cloud PC. Possible values: `enableSingleSignOn`. Read Only.|
|userAccountType|[cloudPcUserAccountType](../resources/cloudpcorganizationsettings.md#cloudpcuseraccounttype-values)|The account type of the user on provisioned Cloud PCs. The possible values are: `standardUser`, `administrator`, `unknownFutureValue`.|
|userExperienceType|[cloudPcUserExperienceType](../resources/cloudpcprovisioningpolicy.md#cloudpcuserexperiencetype-values)|Specifies the type of cloud object the end user can access. The possible values are: `cloudPc`, `cloudApp`, `unknownFutureValue`. When set to `cloudPc`, it indicates that the end user can access the entire desktop. When set to `cloudApp`, it indicates that the end user can only access cloud apps published under the associated provisioning policy. Since the cloud app experience also creates Cloud PC devices that appear in the Cloud PC device list, this property helps differentiate them. The default value is `cloudPc`. This property is defined in the provisioning policy.|
|userDetail|[cloudPcEntraUserDetail](../resources/cloudpcentrauserdetail.md)|The user details (for example, ID and display name) for the user associated with a Reserve Cloud PC assignment. Read-only.|
|userPrincipalName|String|The user principal name (UPN) of the user assigned to the Cloud PC.|
|connectionSettings (deprecated)|[cloudPcConnectionSettings](../resources/cloudpcconnectionsettings.md)|The connection settings of the Cloud PC. Possible values: `enableSingleSignOn`. Read-only. This property is deprecated and stopped retuning data on August 31, 2024. Going forward, use the **connectionSetting** property. |
|frontlineCloudPcAvailability (deprecated)|[frontlineCloudPcAvailability](../resources/frontlinecloudpcdetail.md#frontlinecloudpcavailability-values)|The current availability of a frontline assigned Cloud PC. Possible values: `notApplicable`, `available`, `notAvailable`, and `unknownFutureValue`. Default value is `notApplicable`. Read-only. This property is deprecated and will stop returning data on October 30, 2025. Going forward use the [retrieveFrontlineCloudPcDetail](../api/cloudpc-retrievefrontlinecloudpcdetail.md) API.|
|statusDetails (deprecated)|[cloudPcStatusDetails](../resources/cloudpcstatusdetails.md)|The details of the Cloud PC status. For example, `{ "code": "internalServerError", "message": "There was an error during the Cloud PC upgrade. Please contact support.", "additionalInformation": null }`. This property is deprecated and will no longer be supported effective August 31, 2024. Use statusDetail instead.|

### cloudPcDiskEncryptionState values

|Member|Description|
|:---|:---|
|notAvailable|The Cloud PC isn't provisioned or is in a state where encryption isn't available.|
|notEncrypted|The Cloud PC should be encrypted, but the encryption isn't done so yet (reserved, shouldn't happen).|
|encryptedUsingPlatformManagedKey|The Cloud PC is encrypted using a platform-managed key. This member is the default value if the customer-managed key isn't enabled.|
|encryptedUsingCustomerManagedKey|The Cloud PC is encrypted using the customer-managed key.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

### cloudPcPowerState values

|Member|Description|
|:---|:---|
|running|The Cloud PC status is running.|
|poweredOff|The Cloud PC status is powered off.|
|unknown|The Cloud PC status is unknown.|

### cloudPcStatus values
The following table lists the members of an [evolvable enumeration](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations). You must use the `Prefer: include-unknown-enum-members` request header to get the following values in this evolvable enum: `movingRegion`, `resizePendingLicense`, `modifyingSingleSignOn`, `preparing`.

|Member|Description|
|:---|:---|
|notProvisioned|The Cloud PC hasn't been provisioned yet.|
|provisioning|Cloud PC provisioning is in progress.|
|provisioned|The Cloud PC is provisioned and users can access it.|
|inGracePeriod|The Cloud PC is in the one-week grace period before deprovision.|
|deprovisioning|The Cloud PC is deprovisioning.|
|failed|The operation on Cloud PC failed.|
|provisionedWithWarnings|The Cloud PC is provisioned and end users can access it with some warnings. The user can continue to use this Cloud PC.|
|resizing|The Cloud PC is resizing.|
|pendingProvision|The provisioning is pending on the Cloud PC. In this case, the number of Cloud PCs in the grace period is more than the number of total available licenses. |
|restoring|The Cloud PC is restoring.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|
|movingRegion|Indicates that the Cloud PC is being moved from one region to another.|
|resizePendingLicense|Indicates that the Cloud PC resize process was initiated but can't be completed because the target license hasn't been identified. It's currently awaiting customer action to resolve the licensing issue.|
|modifyingSingleSignOn|Indicates that the Cloud PC is updating the single sign on setting.|
|refreshPolicyConfiguration|Indicates that the Cloud PC is in the process of refreshing the new policy configurations.|
|preparing|Indicates that the Cloud PC is preparing with IT admin defined configuration (Applications, Configuration and Security), appears after provisioning status.​ Only apply to Frontline Shared devices.|

### frontlineCloudPcAccessState values

|Member|Description|
|:---|:---|
|unassigned|Set to unassigned if the Cloud PC doesn't consume any shared-use licenses. The default value is `unassigned`.|
|noLicensesAvailable (deprecated)|Indicates that all shared-use licenses are in use. The `noLicensesAvailable` member is deprecated and will stop returning on September 30, 2024.|
|activationFailed|Indicates that the frontline Cloud PC activation failed after the user requested a frontline Cloud PC.|
|active|Indicates that the frontline Cloud PC is in an active state with a shared-use license assigned, and the user can connect to the Cloud PC.|
|activating|Indicates that a user requested to connect the Cloud PC and the service is starting.|
|standbyMode|Indicates that the frontline Cloud PC is in a standby state before it's shut down and deallocated. A frontline Cloud PC in a standby state is still accessible by the user.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

### cloudPcProductType values

|Member|Description|
|:---|:---|
|enterprise|Default. Indicates the Cloud PC product type for larger businesses that want to deploy Cloud PCs across their organization for an unlimited number of users.|
|frontline|Indicates the Cloud PC product type for frontline and part-time workers to share devices, allowing them to use Cloud PCs during their shifts.|
|devBox|Indicates the Cloud PC product type preconfigured with tools, services, and resources for developers, development teams, and IT professionals.|
|powerAutomate|Indicates the Cloud PC product type for Power Automate customers to run attended and unattended RPAs (robotic process automation) on their Cloud PCs.|
|business|Indicates the Cloud PC product type for small business customers with up to 300 users.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
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
  "aadDeviceId": "String",
  "allotmentDisplayName": "String",
  "connectivityResult": "String",
  "connectionSettings": {"@odata.type": "microsoft.graph.cloudPcConnectionSettings"},
  "deviceRegionName": "String",
  "disasterRecoveryCapability": {"@odata.type": "microsoft.graph.cloudPcDisasterRecoveryCapability"},
  "diskEncryptionState": "String",
  "displayName": "String",
  "gracePeriodEndDateTime": "String (timestamp)",
  "groupDetail": {"@odata.type": "microsoft.graph.cloudPcEntraGroupDetail"},
  "id": "String (identifier)",
  "imageDisplayName": "String",
  "lastLoginResult": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "lastRemoteActionResult": "String",
  "managedDeviceId": "String",
  "managedDeviceName": "String",
  "onPremisesConnectionName": "String",
  "osVersion": "String",
  "partnerAgentInstallResults": "String",
  "powerState": "String",
  "provisionedDateTime": "String (timestamp)",
  "provisioningPolicyId": "String",
  "provisioningPolicyName": "String",
  "provisioningType": "String",
  "servicePlanId": "String",
  "servicePlanName": "String",
  "servicePlanType": "String",
  "sharedDeviceDetail": {"@odata.type": "microsoft.graph.cloudPcFrontlineSharedDeviceDetail"},
  "status": "String",
  "userAccountType": "String",
  "userExperienceType": "String",
  "userDetail": {"@odata.type": "microsoft.graph.cloudPcEntraUserDetail"},
  "userPrincipalName": "String"
}
```
