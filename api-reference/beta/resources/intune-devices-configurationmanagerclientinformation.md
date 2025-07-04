---
title: "configurationManagerClientInformation resource type"
description: "Configuration Manager client information synced from SCCM"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# configurationManagerClientInformation resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Configuration Manager client information synced from SCCM

## Properties
|Property|Type|Description|
|:---|:---|:---|
|clientIdentifier|String|Configuration Manager Client Id from SCCM|
|isBlocked|Boolean|Configuration Manager Client blocked status from SCCM|
|clientVersion|String|Configuration Manager Client version from SCCM|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.configurationManagerClientInformation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.configurationManagerClientInformation",
  "clientIdentifier": "String",
  "isBlocked": true,
  "clientVersion": "String"
}
```