---
title: "objectConnection resource type"
description: "Represents a connector data store linkage record for an object in a synchronization job."
author: "madipanz"
ms.date: 10/13/2026
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# objectConnection resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a connector data store linkage record for an object in a [synchronizationJob](../resources/synchronization-synchronizationjob.md).

Use this resource to inspect the cached linkage between a source object and its target identifier, or clear a stale linkage so the object is re-evaluated during a later synchronization cycle. Connections are created by the synchronization engine and their properties are read-only.

During public preview, collection listing isn't supported. Retrieve an individual connection using a known **objectId**. A GET request to the **objectConnections** collection returns `400 Bad Request`.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/synchronization-objectconnection-get.md)|[objectConnection](../resources/synchronization-objectconnection.md)|Get the cached linkage record for a known object in a synchronization job.|
|[Delete](../api/synchronization-synchronizationjob-delete-objectconnections.md)|None|Clear the cached linkage record for an object in a synchronization job.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name of the connected object. Nullable. Read-only.|
|objectId|String|Identifier supplied in the request to look up the connection. Can be the source or target identifier for the object in the synchronization job. Key. Not nullable. Read-only.|
|objectTypeName|String|Logical object type, such as `User` or `Group`. Not nullable. Read-only.|
|sourceAnchor|String|Anchor or join value in the source directory. Not nullable. Read-only.|
|targetAnchor|String|Anchor or transformed identifier in the target space. Not nullable. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "@odata.type"
  ],
  "keyProperty": "objectId",
  "@odata.type": "microsoft.graph.objectConnection"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.objectConnection",
  "objectId": "String (identifier)",
  "sourceAnchor": "String",
  "targetAnchor": "String",
  "displayName": "String",
  "objectTypeName": "String"
}
```

## Related content

- [Manage provisioning object connections using Microsoft Graph](/entra/identity/app-provisioning/manage-object-connections)
