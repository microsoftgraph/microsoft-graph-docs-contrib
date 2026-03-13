---
title: "androidAppConfigurationSchema resource type"
description: "Schema describing an Android application's custom configurations."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# androidAppConfigurationSchema resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Schema describing an Android application's custom configurations.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get androidAppConfigurationSchema](../api/intune-androidforwork-androidappconfigurationschema-get.md)|[androidAppConfigurationSchema](../resources/intune-androidforwork-androidappconfigurationschema.md)|Read properties and relationships of the [androidAppConfigurationSchema](../resources/intune-androidforwork-androidappconfigurationschema.md) object.|
|[Update androidAppConfigurationSchema](../api/intune-androidforwork-androidappconfigurationschema-update.md)|[androidAppConfigurationSchema](../resources/intune-androidforwork-androidappconfigurationschema.md)|Update the properties of a [androidAppConfigurationSchema](../resources/intune-androidforwork-androidappconfigurationschema.md) object.|
|[retrieveSchema action](../api/intune-androidforwork-androidappconfigurationschema-retrieveschema.md)|[androidAppConfigurationSchema](../resources/intune-androidforwork-androidappconfigurationschema.md)|Retrieves the managed application configurations schema for the specified Android app.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity the application configuration schema corresponds to|
|exampleJson|Binary|UTF8 encoded byte array containing example JSON string conforming to this schema that demonstrates how to set the configuration for this app|
|schemaItems|[appConfigurationSchemaItemType](../resources/intune-androidforwork-appconfigurationschemaitemtype.md) collection|Collection of items each representing a named configuration option in the schema. It only contains the root-level configuration.|
|nestedSchemaItems|[appConfigurationSchemaItemType](../resources/intune-androidforwork-appconfigurationschemaitemtype.md) collection|Collection of items each representing a named configuration option in the schema. It contains a flat list of all configuration.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.androidAppConfigurationSchema"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidAppConfigurationSchema",
  "id": "String (identifier)",
  "exampleJson": "binary",
  "schemaItems": [
    {
      "@odata.type": "microsoft.graph.appConfigurationSchemaItemType",
      "index": 1024,
      "parentIndex": 1024,
      "schemaItemKey": "String",
      "displayName": "String",
      "description": "String"
    }
  ],
  "nestedSchemaItems": [
    {
      "@odata.type": "microsoft.graph.appConfigurationSchemaItemType",
      "index": 1024,
      "parentIndex": 1024,
      "schemaItemKey": "String",
      "displayName": "String",
      "description": "String"
    }
  ]
}
```