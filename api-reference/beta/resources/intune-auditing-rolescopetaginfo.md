---
title: "roleScopeTagInfo resource type"
description: "A class containing the properties of Role Scope Tag Object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# roleScopeTagInfo resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A class containing the properties of Role Scope Tag Object.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Scope Tag Display name.|
|roleScopeTagId|String|Scope Tag Id.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.roleScopeTagInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.roleScopeTagInfo",
  "displayName": "String",
  "roleScopeTagId": "String"
}
```