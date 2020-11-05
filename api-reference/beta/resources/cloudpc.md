---
title: "cloudPC resource type"
description: "Cloud managed virtual desktops."
author: "jiajyang"
localization_priority: Normal
ms.prod: ""
doc_type: resourcePageType
---

# cloudPC resource type

Namespace: microsoft.graph

Cloud managed virtual desktops.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List cloudPCs](../api/virtualendpoint-list-cloudpcs.md)|[cloudPC](../resources/cloudpc.md) collection|List properties and relationships of the [cloudPC](../resources/cloudpc.md) objects.|
|[Get cloudPC](../api/virtualendpoint-get-cloudpc.md)|[cloudPC](../resources/cloudpc.md)|Read the properties and relationships of a [cloudPC](../resources/cloudpc.md) object.|
|[Reprovision](../api/cloudpc-reprovision.md)|None|Reprovision [cloudPC](../resources/cloudpc.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the Cloud PC. Read-only|
|displayName|String|The Cloud PC display name.|
|imageDisplayName|String|Name of the OS image that's on the Cloud PC.|
|managedDeviceId|String|The Cloud PC’s Intune device ID.|
|managedDeviceName|String|The Cloud PC’s Intune device name.|
|provisioningPolicyId|String|The Cloud PC's provisioning policy ID.|
|servicePlanId|String|The Cloud PC's service plan ID.|
|servicePlanName|String|The Cloud PC's service plan name.|
|status|[cloudPcStatus](../resources/cloudpcstatus.md)|Status of the Cloud PC. Possible values are: `notProvisioned`, `provisioning`, `provisioned`, `upgrading`, `inGracePeriod`, `deprovisioning`, `upgradeFailed`, `provisionFailed`, `deprovisionFailed`, `reprovisionFailed`.|
|statusDetails|[cloudPcStatusDetails](../resources/cloudpcStatusDetails.md)|The details of the Cloud PC status.|
|userPrincipalName|String|The user principal name (UPN) of the user assigned to the Cloud PC.|
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
