---
title: "extendedKeyUsage resource type"
description: "Complex type that represents the extended key usage of a certificate. This is shared complex type."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# extendedKeyUsage resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Complex type that represents the extended key usage of a certificate. This is shared complex type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|name|String|The extended key usage (EKU) name that provides a user-friendly way to identify an EKU.|
|objectIdentifier|String|The object identifier (OID) of an extended key usage of a certificate. For example, "1.3.6.1.5.5.7.3.2" for client authentication.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.extendedKeyUsage"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.extendedKeyUsage",
  "name": "String",
  "objectIdentifier": "String"
}
```