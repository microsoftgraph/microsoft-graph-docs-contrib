---
title: "resourcePolicyConfiguration resource type"
description: "Represents the tenant-wide configuration of the resource policy service."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# resourcePolicyConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the tenant-wide configuration of the resource policy service.

Access this singleton at `/admin/resourcePolicy/configuration`. It is always present. When **privilegedReadSetting.appId** is absent or null, `fetchAsPolicy()` is disabled for the tenant and fails with HTTP 403. 

A stored configuration includes an `@odata.etag` annotation. Retrieve the current configuration and supply that value in the `If-Match` header when updating it to protect against concurrent changes. A stale ETag causes `412 Precondition Failed`; retrieve the latest configuration before retrying.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/resourcepolicyconfiguration-get.md)|[resourcePolicyConfiguration](../resources/resourcepolicyconfiguration.md)|Read the tenant-wide configuration.|
|[Update](../api/resourcepolicyconfiguration-update.md)|None|Update the tenant-wide configuration.|
|[Get federated identity credential subject](../api/resourcepolicyconfiguration-getfederatedidentitycredentialsubject.md)|String|Compute a candidate application's credential subject value without activating the application.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|lastModifiedDateTime|DateTimeOffset|The date and time the object was last modified, in ISO 8601 format and UTC. Read-only.|
|privilegedReadSetting|[privilegedReadSetting](../resources/privilegedreadsetting.md)|The customer-owned application configuration for `fetchAsPolicy()`.|

## Relationships

None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.resourcePolicyConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.resourcePolicyConfiguration",
  "privilegedReadSetting": {
    "@odata.type": "microsoft.graph.privilegedReadSetting"
  },
  "lastModifiedDateTime": "String (timestamp)"
}
```
