---
title: "deviceLocalAdminAccountDetail resource type"
description: "Base class for properties related to configured and Intune-managed local administrator account"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceLocalAdminAccountDetail resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Base class for properties related to configured and Intune-managed local administrator account

## Properties
|Property|Type|Description|
|:---|:---|:---|
|passwordLastRotationDateTime|DateTimeOffset|The last rotation date and time of the local admin account password. Read-only.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceLocalAdminAccountDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceLocalAdminAccountDetail",
  "passwordLastRotationDateTime": "String (timestamp)"
}
```