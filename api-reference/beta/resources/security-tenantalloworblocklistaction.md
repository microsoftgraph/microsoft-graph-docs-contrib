---
title: "tenantAllowOrBlockListAction resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# tenantAllowOrBlockListAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|tenantAllowBlockListAction|**TODO: Add Description**.The possible values are: `allow`, `block`, `unknownFutureValue`.|
|expirationDateTime|DateTimeOffset|**TODO: Add Description**|
|note|String|**TODO: Add Description**|
|results|[microsoft.graph.security.tenantAllowBlockListEntryResult](../resources/security-tenantallowblocklistentryresult.md) collection|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.tenantAllowOrBlockListAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.tenantAllowOrBlockListAction",
  "action": "String",
  "results": [
    {
      "@odata.type": "microsoft.graph.security.tenantAllowBlockListEntryResult"
    }
  ],
  "expirationDateTime": "String (timestamp)",
  "note": "String"
}
```

