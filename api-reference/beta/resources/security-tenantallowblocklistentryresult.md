---
title: "tenantAllowBlockListEntryResult resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# tenantAllowBlockListEntryResult resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|entryType|tenantAllowBlockListEntryType|**TODO: Add Description**.The possible values are: `url`, `fileHash`, `sender`, `recipient`, `unknownFutureValue`.|
|expirationDateTime|DateTimeOffset|**TODO: Add Description**|
|identity|String|**TODO: Add Description**|
|status|longRunningOperationStatus|**TODO: Add Description**.The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `skipped`, `unknownFutureValue`.|
|value|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.tenantAllowBlockListEntryResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.tenantAllowBlockListEntryResult",
  "identity": "String",
  "value": "String",
  "entryType": "String",
  "expirationDateTime": "String (timestamp)",
  "status": "String"
}
```

