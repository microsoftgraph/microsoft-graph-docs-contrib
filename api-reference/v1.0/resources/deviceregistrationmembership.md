---
title: "deviceRegistrationMembership resource type"
description: "An abstract resource type that indicates the scope the device registration policy applies to."
author: "michaelrm97"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
ms.date: 03/20/2026
---

# deviceRegistrationMembership resource type

Namespace: microsoft.graph

An abstract resource type indicating the scope that a [device registration policy](../resources/deviceregistrationpolicy.md) applies to. The derived types are [noDeviceRegistrationMembership](../resources/nodeviceregistrationmembership.md), [allDeviceRegistrationMembership](../resources/alldeviceregistrationmembership.md) and [enumeratedDeviceRegistrationMembership](../resources/enumerateddeviceregistrationmembership.md).

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
