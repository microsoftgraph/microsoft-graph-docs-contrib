---
title: "mobileAppScriptReference resource type"
description: "A complex type that contains an identifier which is a reference an associated mobileAppContentScript entity."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# mobileAppScriptReference resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A complex type that contains an identifier which is a reference an associated mobileAppContentScript entity.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|targetId|String|The identifier of an associated mobileAppContentScript entity.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.mobileAppScriptReference"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mobileAppScriptReference",
  "targetId": "String"
}
```