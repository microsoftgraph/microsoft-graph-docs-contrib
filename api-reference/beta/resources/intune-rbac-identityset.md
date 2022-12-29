---
title: "identitySet resource type"
description: "The Identity Set"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# identitySet resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The Identity Set

## Properties
|Property|Type|Description|
|:---|:---|:---|
|application|[identity](../resources/intune-rbac-identity.md)|The Identity of the Application. This property is read-only.|
|device|[identity](../resources/intune-rbac-identity.md)|The Identity of the Device. This property is read-only.|
|user|[identity](../resources/intune-rbac-identity.md)|The Identity of the User. This property is read-only.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identitySet"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identitySet",
  "application": {
    "@odata.type": "microsoft.graph.identity",
    "id": "String",
    "displayName": "String"
  },
  "device": {
    "@odata.type": "microsoft.graph.identity",
    "id": "String",
    "displayName": "String"
  },
  "user": {
    "@odata.type": "microsoft.graph.identity",
    "id": "String",
    "displayName": "String"
  }
}
```
