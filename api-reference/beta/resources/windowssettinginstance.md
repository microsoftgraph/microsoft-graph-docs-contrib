---
title: "windowsSettingInstance resource type"
description: "Represents a setting instance from the Windows operating system."
author: "MS-Arko"
ms.localizationpriority: medium
ms.prod: "cross-device-experiences"
doc_type: resourcePageType
---

# windowsSettingInstance resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a setting instance from the Windows operating system that is stored in the cloud for a given user.

A **windowsSettingInstance** belongs to a [**windowsSetting**](../resources/windowssetting.md).

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List windowsSettingInstance](../api/windowssetting-list-instances.md)|[windowsSettingInstance](../resources/windowssettinginstance.md) collection|Get a list of the [windowsSettingInstance](../resources/windowssettinginstance.md) objects and their properties.|
|[Get windowsSettingInstance](../api/windowssettinginstance-get.md)|[windowsSettingInstance](../resources/windowssettinginstance.md)|Read the properties and relationships of a [windowsSettingInstance](../resources/windowssettinginstance.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Set by the server. Represents the dateTime in UTC when the object was created on the server.|
|expirationDateTime|DateTimeOffset|Set by the server. The object expires at the specified dateTime in UTC, making it unavailable after that time.|
|id|String|The unique identifier of the object. Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|Set by the server if not provided in the request from the Windows client device.Refers to the user's Windows device that modified the object at the specified dateTime in UTC.|
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
  "id": "6984732f-86b0-8e31-dc02-37fce0df6d61",
  "payload": "VGhpcyBpcyBhbm90aGVyIGp1c3QgYW4gZXhhbXBsZSE=",
  "lastModifiedDateTime": "2024-10-31T23:30:41Z",
  "createdDateTime": "2024-02-12T19:34:35.223Z",
  "expirationDateTime": "2034-02-09T19:34:33.771Z"
}
```

