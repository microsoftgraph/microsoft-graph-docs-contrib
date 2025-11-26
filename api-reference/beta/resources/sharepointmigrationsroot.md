---
title: "sharePointMigrationsRoot resource type"
description: "Represents the root container for SharePoint resources and services in Microsoft Graph."
author: "Joey-King"
ms.date: 11/12/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# sharePointMigrationsRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the root container for SharePoint resources and services in Microsoft Graph. This resource provides access to SharePoint migration operations and other SharePoint-related functionality.

Inherits from [entity](../resources/entity.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the **sharePointMigrationsRoot** resource. Inherited from [entity](../resources/entity.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|crossOrganizationMigrationTasks|[sharePointMigrationTask](../resources/sharepointmigrationtask.md) collection|A collection of sharePointMigrationTask resources representing cross-organization migration tasks.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sharePointMigrationsRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharePointMigrationsRoot",
  "id": "String (identifier)"
}
```
