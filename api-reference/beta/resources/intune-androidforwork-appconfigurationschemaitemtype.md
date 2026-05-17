---
title: "appConfigurationSchemaItemType resource type"
description: "Single configuration item inside an Android application's configuration schema."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# appConfigurationSchemaItemType resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Single configuration item inside an Android application's configuration schema.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|index|Int32|Unique index the application uses to maintain nested schema items. Valid values 0 to 2147483647|
|parentIndex|Int32|Index of parent schema item to track nested schema items. Valid values 0 to 2147483647|
|schemaItemKey|String|Unique key the application uses to identify the item|
|displayName|String|Human readable name|
|description|String|Description of what the item controls within the application|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.appConfigurationSchemaItemType"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.appConfigurationSchemaItemType",
  "index": 1024,
  "parentIndex": 1024,
  "schemaItemKey": "String",
  "displayName": "String",
  "description": "String"
}
```