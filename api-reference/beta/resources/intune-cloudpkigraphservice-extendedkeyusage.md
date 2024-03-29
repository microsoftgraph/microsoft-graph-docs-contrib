---
title: "extendedKeyUsage resource type"
description: "Complex type that represents the extended key usage of a certificate. This is shared complex type."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# extendedKeyUsage resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

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
