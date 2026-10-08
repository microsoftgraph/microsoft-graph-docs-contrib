---
title: "remoteTenantGroup resource type"
description: "Represents a group in a remote Microsoft Entra tenant."
author: "hafowler"
ms.date: 07/07/2026
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
---

# remoteTenantGroup resource type

Namespace: microsoft.graph

Represents a security group in a partner (Managed Security Service Provider, or MSSP) or governing tenant that administrators can discover from their own tenant. The calling tenant can target these groups when assigning workload permissions after delegated administrative privileges are set up via [Partner Center](../resources/delegatedadminrelationship.md).

Inherits from [directoryObject](../resources/directoryobject.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/directory-list-remotetenantgroups.md)|[remoteTenantGroup](../resources/remotetenantgroup.md) collection|Get a list of the remoteTenantGroup objects and their properties.|
|[Get](../api/remotetenantgroup-get.md)|[remoteTenantGroup](../resources/remotetenantgroup.md)|Read the properties and relationships of a remoteTenantGroup object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|deletedDateTime|DateTimeOffset|Date and time when this object was deleted. Always `null` when the object hasn't been deleted. Inherited from [directoryObject](../resources/directoryobject.md).|
|id|String|The unique identifier for the object. For example, `12345678-9abc-def0-1234-56789abcde`. The value of the **id** property is often but not exclusively in the form of a GUID; treat it as an opaque identifier and don't rely on it being a GUID. Key. Not nullable. Read-only. Inherited from [entity](../resources/entity.md).|
|remoteGroupDisplayName|String|Display name of the group in the remote tenant.|
|remoteGroupId|Guid|Unique identifier of the group in the remote tenant.|
|remoteTenantDisplayName|String|Display name of the remote tenant.|
|remoteTenantId|Guid|Unique identifier of the remote tenant.|
|remoteTenantPrimaryDomain|String|Primary domain name of the remote tenant.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.remoteTenantGroup",
  "baseType": "microsoft.graph.directoryObject",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.remoteTenantGroup",
  "id": "String",
  "deletedDateTime": "DateTimeOffset",
  "remoteTenantId": "Guid",
  "remoteGroupId": "Guid",
  "remoteTenantDisplayName": "String",
  "remoteTenantPrimaryDomain": "String",
  "remoteGroupDisplayName": "String"
}
```
