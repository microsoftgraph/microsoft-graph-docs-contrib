---
title: "androidLobAppConfigurationSchemaRequestDetail resource type"
description: "The request parameter for requesting Android LOB app configuration schema."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# androidLobAppConfigurationSchemaRequestDetail resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The request parameter for requesting Android LOB app configuration schema.


Inherits from [appConfigurationSchemaRequestDetail](../resources/intune-androidforwork-appconfigurationschemarequestdetail.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appId|String|The application policy ID of the Android LOB app|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.androidLobAppConfigurationSchemaRequestDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidLobAppConfigurationSchemaRequestDetail",
  "appId": "String"
}
```