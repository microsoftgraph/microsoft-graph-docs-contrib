---
title: "appConfigurationSchemaItemBundleType resource type"
description: "Bundle configuration item inside an Android application's custom configuration schema."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# appConfigurationSchemaItemBundleType resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Bundle configuration item inside an Android application's custom configuration schema.


Inherits from [appConfigurationSchemaItemType](../resources/intune-androidforwork-appconfigurationschemaitemtype.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|index|Int32|Unique index the application uses to maintain nested schema items. Valid values 0 to 2147483647 Inherited from [appConfigurationSchemaItemType](../resources/intune-androidforwork-appconfigurationschemaitemtype.md)|
|parentIndex|Int32|Index of parent schema item to track nested schema items. Valid values 0 to 2147483647 Inherited from [appConfigurationSchemaItemType](../resources/intune-androidforwork-appconfigurationschemaitemtype.md)|
|schemaItemKey|String|Unique key the application uses to identify the item Inherited from [appConfigurationSchemaItemType](../resources/intune-androidforwork-appconfigurationschemaitemtype.md)|
|displayName|String|Human readable name Inherited from [appConfigurationSchemaItemType](../resources/intune-androidforwork-appconfigurationschemaitemtype.md)|
|description|String|Description of what the item controls within the application Inherited from [appConfigurationSchemaItemType](../resources/intune-androidforwork-appconfigurationschemaitemtype.md)|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.appConfigurationSchemaItemBundleType"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.appConfigurationSchemaItemBundleType",
  "index": 1024,
  "parentIndex": 1024,
  "schemaItemKey": "String",
  "displayName": "String",
  "description": "String"
}
```