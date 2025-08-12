---
title: "fileStorageContainerType resource type"
description: "Associates a SharePoint Embedded application and a set of containers."
author: "javieralvarezchiang"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# fileStorageContainerType resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Associates a SharePoint Embedded application and a set of [containers](../resources/filestoragecontainer.md). A **fileStorageContainerType**, also called container type, defines settings, access privileges, and billing accountability.

Each container type is coupled with one SharePoint Embedded application that is referred to as the owning application.

A **fileStorageContainerType** must be [registered](../resources/filestoragecontainertyperegistration.md) in a tenant to be able to create containers.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/filestorage-list-containertypes.md)|[fileStorageContainerType](../resources/filestoragecontainertype.md) collection|Get a list of the [fileStorageContainerType](../resources/filestoragecontainertype.md) objects and their properties for the current tenant.|
|[Create](../api/filestorage-post-containertypes.md)|[fileStorageContainerType](../resources/filestoragecontainertype.md)|Create a new [fileStorageContainerType](../resources/filestoragecontainertype.md) in the owning tenant.|
|[Get](../api/filestoragecontainertype-get.md)|[fileStorageContainerType](../resources/filestoragecontainertype.md)|Get a [fileStorageContainerType](../resources/filestoragecontainertype.md) using its ID.|
|[Update](../api/filestoragecontainertype-update.md)|[fileStorageContainerType](../resources/filestoragecontainertype.md)|Update the properties of a [fileStorageContainerType](../resources/filestoragecontainertype.md) object.|
|[Delete](../api/filestorage-delete-containertypes.md)|None|Delete a [fileStorageContainerType](../resources/filestoragecontainertype.md) object from the tenant.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|billingClassification|fileStorageContainerBillingClassification|The billing type. The possible values are: `standard`, `trial`, `directToCustomer`, `unknownFutureValue`. The default value is `standard`.|
|billingStatus|fileStorageContainerBillingStatus|The billing status. Valid when the billing is set up or with trial **fileStorageContainerType** objects that don't require billing. The possible values are: `invalid`, `valid`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|The creation date. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|etag|String|Used in update scenarios for optimistic concurrency control. Read-only.|
|expirationDateTime|DateTimeOffset|The expiration date. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|id|String|The unique identifier of the **fileStorageContainerType** object. Read-only.|
|name|String|The name of the **fileStorageContainerType**.|
|owningAppId|Guid|ID of the application that owns the **fileStorageContainerType**.|
|settings|[fileStorageContainerTypeSettings](../resources/filestoragecontainertypesettings.md)|The settings of the **fileStorageContainerType**.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.fileStorageContainerType",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.fileStorageContainerType",
  "billingClassification": "String",
  "billingStatus": "String",
  "createdDateTime": "String (timestamp)",
  "etag": "String",
  "expirationDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "name": "String",
  "owningAppId": "Guid",
  "settings": {"@odata.type": "microsoft.graph.fileStorageContainerTypeSettings"}
}
```
