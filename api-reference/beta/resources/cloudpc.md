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

Represents a cloud-managed virtual desktop. This Cloud PC is also enrolled into Intune and managed through MEM portal, so the Cloud PC also has a corresponding Intune managed device id.

[!INCLUDE [cloudpc-api-preview](../../includes/cloudpc-api-preview.md)]

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List cloudPCs](../api/virtualendpoint-list-cloudpcs.md)|[cloudPC](../resources/cloudpc.md) collection|List properties and relationships of the [cloudPC](../resources/cloudpc.md) objects.|
|[Get cloudPC](../api/cloudpc-get.md)|[cloudPC](../resources/cloudpc.md)|Read the properties and relationships of a [cloudPC](../resources/cloudpc.md) object.|
|[Reprovision](../api/cloudpc-reprovision.md)|None|Reprovision a [cloudPC](../resources/cloudpc.md) object.|
|[endGracePeriod](../api/cloudpc-endgraceperiod.md)|None|End the grace period for a [cloudPC](../resources/cloudpc.md) object.|
|[Reprovision cloudPC remote action](../api/manageddevice-reprovisioncloudpc.md)|None|Reprovision a Cloud PC with Intune managed device id.|
|[Bulk reprovision cloudPCs remote action](../api/manageddevice-bulkreprovisioncloudpc.md)|None|Bulk reprovision a set of Cloud PC devices with Intune managed device IDs.|
|[Resize cloudPC remote action](../api/manageddevice-resizecloudpc.md)|None|Upgrade or downgrade an existing CloudPC to another configuration with new vCPU and storage size through Intune managed device ID.|
|[Get cloudPC remote action results](../api/manageddevice-getcloudpcremoteactionresults.md)|[cloudPcRemoteActionResult](../resources/cloudpcremoteactionresult.md)|Check the [Cloud PC-specified remote action results](../resources/cloudpcremoteactionresult.md) for a Cloud PC device.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the Cloud PC. Read-only.|
|displayName|String|The Cloud PC display name.|
|imageDisplayName|String|Name of the OS image that's on the Cloud PC.|
|managedDeviceId|String|The Cloud PC’s Intune device ID.|
|managedDeviceName|String|The Cloud PC’s Intune device name.|
|provisioningPolicyId|String|The Cloud PC's provisioning policy ID.|
|provisioningPolicyName|String|The provisioning policy that is applied during provisioning of Cloud PCs.|
|onPremisesConnectionName|String|The on-premises connection that is applied during provisioning of Cloud PCs.|
|servicePlanId|String|The Cloud PC's service plan ID.|
|servicePlanName|String|The Cloud PC's service plan name.|
|status|[cloudPcStatus](#cloudpcstatus-values)|Status of the Cloud PC. Possible values are: `notProvisioned`, `provisioning`, `provisioned`, `upgrading`, `inGracePeriod`, `deprovisioning`, `failed`.|
|statusDetails|[cloudPcStatusDetails](../resources/cloudpcstatusdetails.md)|The details of the Cloud PC status.|
|userPrincipalName|String|The user principal name (UPN) of the user assigned to the Cloud PC.|
|lastModifiedDateTime|DateTimeOffset|The Cloud PC's last modified date and time. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|gracePeriodEndDateTime|DateTimeOffset|The date and time when the grace period ends and reprovisioning/deprovisioning happens. Required only if status is `inGracePeriod`. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|

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
  "managedDeviceId": "String",
  "managedDeviceName": "String",
  "provisioningPolicyId": "String",
  "provisioningPolicyName": "String",
  "onPremisesConnectionName": "String",
  "servicePlanId": "String",
  "servicePlanName": "String",
  "status": "String",
  "userPrincipalName": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "gracePeriodEndDateTime": "String (timestamp)"
}
```
