---
title: "win32LobAppScript resource type"
description: "A representation of a script that can be run on an end-user device managed by Intune in relation to a Win32 app."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# win32LobAppScript resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A representation of a script that can be run on an end-user device managed by Intune in relation to a Win32 app.


Inherits from [mobileAppContentScript](../resources/intune-apps-mobileappcontentscript.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List win32LobAppScripts](../api/intune-apps-win32lobappscript-list.md)|[win32LobAppScript](../resources/intune-apps-win32lobappscript.md) collection|List properties and relationships of the [win32LobAppScript](../resources/intune-apps-win32lobappscript.md) objects.|
|[Get win32LobAppScript](../api/intune-apps-win32lobappscript-get.md)|[win32LobAppScript](../resources/intune-apps-win32lobappscript.md)|Read properties and relationships of the [win32LobAppScript](../resources/intune-apps-win32lobappscript.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the script associated with a mobileLobApp entity. This property is read-only. Inherited from [mobileAppContentScript](../resources/intune-apps-mobileappcontentscript.md)|
|displayName|String|The display name for the script. Inherited from [mobileAppContentScript](../resources/intune-apps-mobileappcontentscript.md)|
|content|String|The content of the script. This is a Base64-encoded representation of the script's original content. The content has a maximum size limit of 100KB. Inherited from [mobileAppContentScript](../resources/intune-apps-mobileappcontentscript.md)|
|state|[mobileAppContentScriptState](../resources/intune-apps-mobileappcontentscriptstate.md)|Indicates the state of the script upload. Possible values are commitPending, commitSuccess, and commitFailed. This property is read-only. Inherited from [mobileAppContentScript](../resources/intune-apps-mobileappcontentscript.md). The possible values are: `commitPending`, `commitSuccess`, `commitFailed`, `unknownFutureValue`.|
|enforceSignatureCheck|Boolean|Indicates whether or not to enforce a signature check when running the script. When TRUE, the script cannot be run without enforcing a signature check. When FALSE, no signature check will be enforced when running the script. Default value is FALSE.|
|runAs32Bit|Boolean|Indicates whether the script will run as 32-bit or 64-bit. When TRUE, the script will run as 32-bit. When FALSE, the script will run as 64-bit. Default value is FALSE.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.win32LobAppScript"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.win32LobAppScript",
  "id": "String (identifier)",
  "displayName": "String",
  "content": "String",
  "state": "String",
  "enforceSignatureCheck": true,
  "runAs32Bit": true
}
```