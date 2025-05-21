---
title: "companyPortalBlockedAction resource type"
description: "Blocked actions on the company portal as per platform and device ownership types"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# companyPortalBlockedAction resource type

Namespace: microsoft.graph
> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.


Blocked actions on the company portal as per platform and device ownership types

## Properties
|Property|Type|Description|
|:---|:---|:---|
|platform|[devicePlatformType](../resources/intune-onboarding-deviceplatformtype.md)|Device OS/Platform. Possible values are: `android`, `androidForWork`, `iOS`, `macOS`, `windowsPhone81`, `windows81AndLater`, `windows10AndLater`, `androidWorkProfile`, `unknown`.|
|ownerType|[ownerType](../resources/intune-shared-ownertype.md)|Device ownership type. Possible values are: `unknown`, `company`, `personal`.|
|action|[companyPortalAction](../resources/intune-shared-companyportalaction.md)|Device Action. Possible values are: `unknown`, `remove`, `reset`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.companyPortalBlockedAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.companyPortalBlockedAction",
  "platform": "String",
  "ownerType": "String",
  "action": "String"
}
```
