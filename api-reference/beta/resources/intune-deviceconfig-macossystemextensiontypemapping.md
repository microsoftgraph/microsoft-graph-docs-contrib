---
title: "macOSSystemExtensionTypeMapping resource type"
description: "Represents a mapping between team identifiers for macOS system extensions and system extension types."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# macOSSystemExtensionTypeMapping resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents a mapping between team identifiers for macOS system extensions and system extension types.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|teamIdentifier|String|Gets or sets the team identifier used to sign the system extension.|
|allowedTypes|[macOSSystemExtensionType](../resources/intune-deviceconfig-macossystemextensiontype.md)|Gets or sets the allowed macOS system extension types. Possible values are: `driverExtensionsAllowed`, `networkExtensionsAllowed`, `endpointSecurityExtensionsAllowed`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.macOSSystemExtensionTypeMapping"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.macOSSystemExtensionTypeMapping",
  "teamIdentifier": "String",
  "allowedTypes": "String"
}
```