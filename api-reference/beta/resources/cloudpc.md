---
title: "cloudPC resource type"
description: "Cloud PC devices."
author: "jiajyang"
localization_priority: Normal
ms.prod: "microsoft_cloudpc"
doc_type: resourcePageType
---

# cloudPC resource type

Namespace: microsoft.graph

Cloud PC devices.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List cloudPCs](../api/virtualendpoint-list-cloudpcs.md)|[cloudPC](../resources/cloudpc.md) collection|Get the cloudPC resources from the cloudPCs navigation property.|
|[Get cloudPCs](../api/virtualendpoint-get-cloudpc.md)|[cloudPC](../resources/cloudpc.md)|Read the properties and relationships of a [cloudPC](../resources/cloudpc.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The Cloud PC id|
|displayName|String|The Cloud PC display name|
|imageDisplayName|String|Name of the os image that is on the Cloud PC|
|managedDeviceId|String|The Cloud PC’s Intune device id|
|managedDeviceName|String|The Cloud PC’s Intune device name|
|provisioningPolicyId|String|The Cloud PC's provisioning policy id|
|servicePlanId|String|The Cloud PC's service plan id|
|servicePlanName|String|The Cloud PC's service plan name|
|status|[cloudPcStatus](../resources/cloudpcstatus.md)|Status of the Cloud PC. Possible values are: `notProvisioned`, `provisioning`, `provisioned`, `upgrading`, `inGracePeriod`, `deprovisioning`, `upgradeFailed`, `provisionFailed`, `deprovisionFailed`, `reprovisionFailed`.|
|userPrincipalName|String|UserPrincipalName (UPN) of the user assigned to use the Cloud PC|
|lastModifiedDateTime|DateTimeOffset|The Cloud PC's last modified date and time. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'.|

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
  "servicePlanId": "String",
  "servicePlanName": "String",
  "status": "String",
  "userPrincipalName": "String",
  "lastModifiedDateTime": "String (timestamp)"
}
```
