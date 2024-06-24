---
title: "enumeratedDeviceRegistrationMembership resource type"
description: "Indicates the users and groups this device registration policy applies to."
author: "SanDeo-MSFT"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
---

# enumeratedDeviceRegistrationMembership resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Indicates that this device registration policy applies to the enumerated users and groups. Inherits from [deviceRegistrationMembership](../resources/deviceregistrationmembership.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|groups|String collection|List of groups that this policy applies to.|
|users|String collection|List of users that this policy applies to.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.enumeratedDeviceRegistrationMembership"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.enumeratedDeviceRegistrationMembership",
  "users": [
    "String"
  ],
  "groups": [
    "String"
  ]
}
```
