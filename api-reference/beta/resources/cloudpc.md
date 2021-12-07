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
|[Reprovision](../api/cloudpc-reprovision.md)|None|Reprovision a [cloudPC](../resources/cloudpc.md) object.|
|[End grace period](../api/cloudpc-endgraceperiod.md)|None|End the grace period for a [cloudPC](../resources/cloudpc.md) object.|
|[Reboot](../api/cloudpc-reboot.md)|None|Reboot a specific [cloudPC](../resources/cloudpc.md) object.|
|[Rename](../api/cloudpc-rename.md)|None|Rename a specific [cloudPC](../resources/cloudpc.md) object. Use this API to update the **displayName** for the Cloud PC entity.|
|[Troubleshoot](../api/cloudpc-troubleshoot.md)|None|Troubleshoot a specific [cloudPC](../resources/cloudpc.md) object. Use this API to check the health status of the Cloud PC and the session host.|
|[Reprovision remote action](../api/manageddevice-reprovisioncloudpc.md)|None|Reprovision a Cloud PC with an Intune [managed device](../resources/cloudpc.md) ID.|
|[Bulk reprovision remote action](../api/manageddevice-bulkreprovisioncloudpc.md)|None|Bulk reprovision a set of Cloud PC devices with Intune managed device IDs.|
|[Resize remote action](../api/manageddevice-resizecloudpc.md)|None|Upgrade or downgrade an existing Cloud PC to another configuration with new vCPU and storage size through Intune managed device ID.|
|[Get remote action results](../api/manageddevice-getcloudpcremoteactionresults.md)|[cloudPcRemoteActionResult](../resources/cloudpcremoteactionresult.md)|Check the [Cloud PC-specified remote action results](../resources/cloudpcremoteactionresult.md) for a Cloud PC device.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|aadDeviceId|String|The Azure Active Directory (Azure AD) device ID of the Cloud PC.|
|displayName|String|The display name of the Cloud PC.|
|gracePeriodEndDateTime|DateTimeOffset|The date and time when the grace period ends and reprovisioning/deprovisioning happens. Required only if the status is `inGracePeriod`. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|id|String|The unique identifier for the Cloud PC. Read-only.|
|imageDisplayName|String|Name of the OS image that's on the Cloud PC.|
|lastLoginResult|[cloudPcLoginResult](../resources/cloudpcloginresult.md)|The last login result of the Cloud PC. For example, `{ "time": "2014-01-01T00:00:00Z"}`.|
|lastModifiedDateTime|DateTimeOffset|The last modified date and time of the Cloud PC. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|lastRemoteActionResult|[cloudPcRemoteActionResult](../resources/cloudpcremoteactionresult.md)|The last remote action result of the enterprise Cloud PCs. The supported remote actions are: `Rename`, `Reboot`, `Reprovision`, and `Troubleshoot`.|
|managedDeviceId|String|The Intune device ID of the Cloud PC.|
|managedDeviceName|String|The Intune device name of the Cloud PC.|
|onPremisesConnectionName|String|The on-premises connection that is applied during the provisioning of Cloud PCs.|
|provisioningPolicyId|String|The provisioning policy ID of the Cloud PC.|
|provisioningPolicyName|String|The provisioning policy that is applied during the provisioning of Cloud PCs.|
|servicePlanId|String|The service plan ID of the Cloud PC.|
|servicePlanName|String|The service plan name of the Cloud PC.|
|servicePlanType|[cloudPcServicePlanType](../resources/cloudpcserviceplan.md#cloudpcserviceplantype-values)|The service plan type of the Cloud PC.|
|status|[cloudPcStatus](#cloudpcstatus-values)|The status of the Cloud PC. Possible values are: `notProvisioned`, `provisioning`, `provisioned`, `upgrading`, `inGracePeriod`, `deprovisioning`, `failed`.|
|statusDetails|[cloudPcStatusDetails](../resources/cloudpcstatusdetails.md)|The details of the Cloud PC status.|
|userPrincipalName|String|The user principal name (UPN) of the user assigned to the Cloud PC.|

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
  "onPremisesConnectionName": "String",
  "servicePlanId": "String",
  "servicePlanType": "String",
  "servicePlanName": "String",
  "status": "String",
  "userPrincipalName": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "gracePeriodEndDateTime": "String (timestamp)",
  "lastRemoteActionResult": "String",
  "lastLoginResult": "String"
}
```
