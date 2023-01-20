---
title: "tenantAttachRBACState resource type"
description: "Represents result of GetState API."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# tenantAttachRBACState resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents result of GetState API.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|enabled|Boolean|Indicates whether the tenant is enabled for Tenant Attach with role management.  TRUE if enabled, FALSE if the Tenant Attach with rolemanagement is disabled.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.tenantAttachRBACState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantAttachRBACState",
  "enabled": true
}
```
