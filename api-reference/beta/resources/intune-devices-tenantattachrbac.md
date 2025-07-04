---
title: "tenantAttachRBAC resource type"
description: "Singleton entity that acts as a container for tenant attach enablement functionality."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# tenantAttachRBAC resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Singleton entity that acts as a container for tenant attach enablement functionality.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get tenantAttachRBAC](../api/intune-devices-tenantattachrbac-get.md)|[tenantAttachRBAC](../resources/intune-devices-tenantattachrbac.md)|Read properties and relationships of the [tenantAttachRBAC](../resources/intune-devices-tenantattachrbac.md) object.|
|[Update tenantAttachRBAC](../api/intune-devices-tenantattachrbac-update.md)|[tenantAttachRBAC](../resources/intune-devices-tenantattachrbac.md)|Update the properties of a [tenantAttachRBAC](../resources/intune-devices-tenantattachrbac.md) object.|
|[enable action](../api/intune-devices-tenantattachrbac-enable.md)|None||
|[getState function](../api/intune-devices-tenantattachrbac-getstate.md)|[tenantAttachRBACState](../resources/intune-devices-tenantattachrbacstate.md)||

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for this entity|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tenantAttachRBAC"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantAttachRBAC",
  "id": "String (identifier)"
}
```