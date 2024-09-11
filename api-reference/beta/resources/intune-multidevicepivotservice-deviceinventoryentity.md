---
title: "deviceInventoryEntity resource type"
description: "Represents an entity in the Inventory Catalog, such as BitLocker, CPU, or disk data. Data for an entity is collected from managed devices who are compliant with an Inventory Policy that configures that entity."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
---

# deviceInventoryEntity resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents an entity in the Inventory Catalog, such as BitLocker, CPU, or disk data. Data for an entity is collected from managed devices who are compliant with an Inventory Policy that configures that entity.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceInventoryEntities](../api/intune-multidevicepivotservice-deviceinventoryentity-list.md)|[deviceInventoryEntity](../resources/intune-multidevicepivotservice-deviceinventoryentity.md) collection|List properties and relationships of the [deviceInventoryEntity](../resources/intune-multidevicepivotservice-deviceinventoryentity.md) objects.|
|[Get deviceInventoryEntity](../api/intune-multidevicepivotservice-deviceinventoryentity-get.md)|[deviceInventoryEntity](../resources/intune-multidevicepivotservice-deviceinventoryentity.md)|Read properties and relationships of the [deviceInventoryEntity](../resources/intune-multidevicepivotservice-deviceinventoryentity.md) object.|
|[Create deviceInventoryEntity](../api/intune-multidevicepivotservice-deviceinventoryentity-create.md)|[deviceInventoryEntity](../resources/intune-multidevicepivotservice-deviceinventoryentity.md)|Create a new [deviceInventoryEntity](../resources/intune-multidevicepivotservice-deviceinventoryentity.md) object.|
|[Delete deviceInventoryEntity](../api/intune-multidevicepivotservice-deviceinventoryentity-delete.md)|None|Deletes a [deviceInventoryEntity](../resources/intune-multidevicepivotservice-deviceinventoryentity.md).|
|[Update deviceInventoryEntity](../api/intune-multidevicepivotservice-deviceinventoryentity-update.md)|[deviceInventoryEntity](../resources/intune-multidevicepivotservice-deviceinventoryentity.md)|Update the properties of a [deviceInventoryEntity](../resources/intune-multidevicepivotservice-deviceinventoryentity.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of an Inventory Catalog entity. Read-only.|
|systemDisplayName|String|The Kusto Query Language (KQL) version of the entity's name, which is how it will be displayed in the Intune Pivot Multi-Device entity list. This name corresponds to a Kusto table and is written in CamelCase. Example: Cpu. Read-only.|
|displayName|String|The localized name of the entity. Example: CPU. Read-only.|
|attributes|[deviceInventoryAttribute](../resources/intune-multidevicepivotservice-deviceinventoryattribute.md) collection|The collection of attributes for the entity, where each deviceInventoryAttribute is a complex type containing the Kusto Query Language (KQL) version of the attribute's name, the localized attribute name, and the attribute type (see definition below). Ready-only.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceInventoryEntity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceInventoryEntity",
  "id": "String (identifier)",
  "systemDisplayName": "String",
  "displayName": "String",
  "attributes": [
    {
      "@odata.type": "microsoft.graph.deviceInventoryAttribute",
      "systemDisplayName": "String",
      "displayName": "String",
      "attributeType": "String"
    }
  ]
}
```
