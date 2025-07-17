---
title: "deviceRegistrationMembership resource type"
description: "An abstract resource type that indicates the scope the device registration policy applies to."
author: "SanDeo-MSFT"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# deviceRegistrationMembership resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract resource type indicating the scope that a device registration policy applies to. The derived types are [noDeviceRegistrationMembership](../resources/nodeviceregistrationmembership.md), [allDeviceRegistrationMembership](../resources/alldeviceregistrationmembership.md) and [enumeratedDeviceRegistrationMembership](../resources/enumerateddeviceregistrationmembership.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceRegistrationMembership"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceRegistrationMembership"
}
```
