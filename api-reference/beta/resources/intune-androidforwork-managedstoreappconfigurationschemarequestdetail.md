---
title: "managedStoreAppConfigurationSchemaRequestDetail resource type"
description: "The request parameter for requesting Android Managed Play Store app configuration schema."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# managedStoreAppConfigurationSchemaRequestDetail resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The request parameter for requesting Android Managed Play Store app configuration schema.


Inherits from [appConfigurationSchemaRequestDetail](../resources/intune-androidforwork-appconfigurationschemarequestdetail.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|packageName|String|The package name of the Android Managed Play Store app|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managedStoreAppConfigurationSchemaRequestDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedStoreAppConfigurationSchemaRequestDetail",
  "packageName": "String"
}
```