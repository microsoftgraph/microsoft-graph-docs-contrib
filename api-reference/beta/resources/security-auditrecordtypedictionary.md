---
title: "auditRecordTypeDictionary resource type"
description: "Represents an open-type dictionary for dynamic audit event properties."
author: "imsandhya7-spec"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 06/12/2026
toc.title: "Audit record type dictionary"
---
# auditRecordTypeDictionary resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an open-type dictionary for dynamic audit event properties. This type follows the [Graph Dictionary pattern](https://github.com/microsoft/api-guidelines/blob/vNext/graph/patterns/dictionary.md) and is declared as an open type to allow arbitrary name-value pairs at runtime.

This type is used as the type of the **dynamicProperties** property on [auditData](../resources/security-auditdata.md), enabling dynamic properties in audit event payloads.

## Properties

None. As an open type, this resource can contain additional properties of any type.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.auditRecordTypeDictionary",
  "openType": true
}
-->
```json
{
  "@odata.type": "#microsoft.graph.security.auditRecordTypeDictionary"
}
```
