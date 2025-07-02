---
title: "fileStorageContainerType resource type"
description: "Prototype and configuration of fileStorageContainers"
author: "javieralvarezchiang"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# fileStorageContainerType resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A fileStorageContainerType, also called container type, is a resource that associates a SharePoint Embedded application and a set of [containers][fileStorageContainer]. It defines settings, access privileges, and billing accountability.

Each container type is coupled with one SharePoint Embedded application, which is referred to as the owning application.

A fileStorageContainerType must be [registered][fileStorageContainerTypeRegistration] in a tenant to be able to create containers.


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/filestorage-list-containertypes.md)|[fileStorageContainerType](../resources/filestoragecontainertype.md) collection|Get a list of the fileStorageContainerType objects and their properties.|
|[Create](../api/filestorage-post-containertypes.md)|[fileStorageContainerType](../resources/filestoragecontainertype.md)|Create a new fileStorageContainerType object.|
|[Get](../api/filestoragecontainertype-get.md)|[fileStorageContainerType](../resources/filestoragecontainertype.md)|Read the properties and relationships of a fileStorageContainerType object.|
|[Update](../api/filestoragecontainertype-update.md)|[fileStorageContainerType](../resources/filestoragecontainertype.md)|Update the properties of a fileStorageContainerType object.|
|[Delete](../api/filestorage-delete-containertypes.md)|None|Delete a fileStorageContainerType object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|billingClassification|fileStorageContainerBillingClassification|Billing type. Defaults to standard. The possible values are: `standard`, `trial`, `directToCustomer`.|
|billingStatus|fileStorageContainerBillingStatus|Billing status. Valid when the billing is set up or with trial fileStorageContainerTypes, which doesn't require billing. The possible values are: `invalid`, `valid`.|
|createdDateTime|DateTimeOffset|fileStorageContainerType creation date. Read-only.|
|etag|String|Used in update for optimistic concurrency control.|
|expirationDateTime|DateTimeOffset|Expiration Date. Read-only.|
|id|String|fileStorageContainerType ID. Read-only|
|name|String|name of the fileStorageContainerType|
|owningAppId|Guid|ID of the application that owns the fileStorageContainerType.|
|settings|[fileStorageContainerTypeSettings](../resources/filestoragecontainertypesettings.md)|fileStorageContainerType settings|

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
  "id": "String (identifier)",
  "name": "String",
  "owningAppId": "Guid",
  "billingClassification": "String",
  "billingStatus": "String",
  "createdDateTime": "String (timestamp)",
  "expirationDateTime": "String (timestamp)",
  "settings": {
    "@odata.type": "microsoft.graph.fileStorageContainerTypeSettings"
  },
  "etag": "String"
}
```

[fileStorageContainer]: filestoragecontainer.md
[fileStorageContainerTypeRegistration]: filestoragecontainertyperegistration.md
