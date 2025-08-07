---
title: "mobileAppContentScript resource type"
description: "Contains properties for a script associated with amobileLobApp entity."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# mobileAppContentScript resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties for a script associated with amobileLobApp entity.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List mobileAppContentScripts](../api/intune-apps-mobileappcontentscript-list.md)|[mobileAppContentScript](../resources/intune-apps-mobileappcontentscript.md) collection|List properties and relationships of the [mobileAppContentScript](../resources/intune-apps-mobileappcontentscript.md) objects.|
|[Get mobileAppContentScript](../api/intune-apps-mobileappcontentscript-get.md)|[mobileAppContentScript](../resources/intune-apps-mobileappcontentscript.md)|Read properties and relationships of the [mobileAppContentScript](../resources/intune-apps-mobileappcontentscript.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the script associated with a mobileLobApp entity. This property is read-only.|
|displayName|String|The display name for the script.|
|content|String|The content of the script. This is a Base64-encoded representation of the script's original content. The content has a maximum size limit of 100KB.|
|state|[mobileAppContentScriptState](../resources/intune-apps-mobileappcontentscriptstate.md)|Indicates the state of the script upload. Possible values are commitPending, commitSuccess, and commitFailed. This property is read-only. Possible values are: `commitSuccess`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobileAppContentScript"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mobileAppContentScript",
  "id": "String (identifier)",
  "displayName": "String",
  "content": "String",
  "state": "String"
}
```