---
title: "tenantAttachRBACState resource type"
description: "Represents result of GetState API."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# tenantAttachRBACState resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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