---
title: "deviceInventoryAttribute resource type"
description: "Represents a piece of device inventory information. This can be an attribute within an Inventory Catalog entity or a computed attribute from joining multiple entities together. Data for an attribute is collected from managed devices who are compliant with an Inventory Policy that configures that property."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
---

# deviceInventoryAttribute resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents a piece of device inventory information. This can be an attribute within an Inventory Catalog entity or a computed attribute from joining multiple entities together. Data for an attribute is collected from managed devices who are compliant with an Inventory Policy that configures that property.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|systemDisplayName|String|The Kusto Query Language (KQL) version of the attribute's name, which is how it will be displayed in the Intune Pivot Multi-Device entity list. This name corresponds to a column within a Kusto table and is written in CamelCase. Example: CoreCount. Read-only.|
|displayName|String|The localized name of the attribute. Example: Core Count. Read-only.|
|attributeType|[deviceInventoryAttributeType](../resources/intune-multidevicepivotservice-deviceinventoryattributetype.md)|The KQL-supported attribute type. Possible values are: bool (default), datetime, decimal, dynamic, guid, int, long, real, string, and timespan. Read-only. Possible values are: `bool`, `datetime`, `decimal`, `dynamic`, `guid`, `int`, `long`, `real`, `string`, `timespan`, `unknownFutureValue`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceInventoryAttribute"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceInventoryAttribute",
  "systemDisplayName": "String",
  "displayName": "String",
  "attributeType": "String"
}
```
