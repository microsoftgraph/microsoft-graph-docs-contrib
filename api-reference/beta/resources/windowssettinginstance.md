---
title: "windowsSettingInstance resource type"
description: "windowsSettingInstance represents a setting instance from Windows operating system."
author: "MS-Arko"
ms.localizationpriority: medium
ms.prod: "cross-device-experiences"
doc_type: resourcePageType
---

# windowsSettingInstance resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**windowsSettingInstance** represents setting instances from Windows operating system that are stored in the cloud for a given user.

A **windowsSettingInstance** belongs to a [**windowsSetting**](../resources/windowssetting.md) and represents a specific setting value for a given user. 

The *payload* property of a **windowsSettingInstance** contains the actual setting value. The *payload* is a string in base64 encoded format. The *payloadType* property of the [**windowsSetting**](../resources/windowssetting.md) object indicates the type of the setting value. The *payload* when decoded is a JSON object which differs from setting to setting and is specific to the *payloadType*.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List windowsSettingInstance objects](../api/windowssetting-list-instances.md)|[windowsSettingInstance](../resources/windowssettinginstance.md) collection|Get a list of the [windowsSettingInstance](../resources/windowssettinginstance.md) objects and their properties.|
|[Get windowsSettingInstance](../api/windowssettinginstance-get.md)|[windowsSettingInstance](../resources/windowssettinginstance.md)|Read the properties and relationships of a [windowsSettingInstance](../resources/windowssettinginstance.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Set by the server. DateTime in UTC when the object was created on the server.|
|expirationDateTime|DateTimeOffset|Set by the server. DateTime in UTC when the object will expire after which it will no longer be available.|
|id|String|The unique identifier of the object. Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|Set by the server if not provided in Windows client device's request. DateTime in UTC when the object was modified by the user’s Windows device.|
|payload|String|Base64 encoded JSON setting value.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsSettingInstance",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsSettingInstance",
  "id": "String (identifier)",
  "payload": "String (Base64 encoded JSON)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "expirationDateTime": "String (timestamp)"
}
```

