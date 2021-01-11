---
title: "UsageRight resource type"
description: "Contains information about a usageRight a user/device has assigned"
author: "AkshayMSFT"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# UsageRight resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A Usage Right represents a license that a user or device has for either third party software built on power apps or for device based subscriptions (device only).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List user usageRights](../api/user-list-usagerights.md)|[UsageRight](../resources/usageright.md) collection|Get the list of usage rights a user has.|
|[List device usageRights](../api/device-list-usagerights.md)|[UsageRight](../resources/usageright.md) collection|Get the list of usage rights a device has.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|catalogId|String|Product id corresponding to the usage right.|
|id|String|The id of the usage right.|
|serviceIdentifier|String|Identifier of the service corresponding to the usage right.|
|state|usageRightState|The state of the usage right. Possible values are: `active`, `inactive`, `warning`, `suspended`.|

### usageRightState values 

| Member             | Value | Description               |
| :----------------- | :---- | :------------------------ |
|active            | 0     | Indicates that the usage right is active and can be used for provisioning benefits.|
|inactive               | 1     | Indicates that the usage right is not active and cannot be used for provisioning benefits.|
|warning             | 2     | Indicates that the usage right is in grace likely due to payment violation. This state can be used to either remind of pending payment or offer a degraded experience.|
|suspended             | 3     | Indicates that the usage right is suspended likely due to Payment violation|
|unknownFutureValue  | 4    | Sentinel value to indicate future values. |

>**Note:** Only the active and warning states represent a usable benefit. All other states should be treated as not resulting in a usable benefit (including any future additions to this enum).



## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.usageRight",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.usageRight",
  "id": "String (identifier)",
  "catalogId": "String",
  "serviceIdentifier": "String",
  "state": "String"
}
```

