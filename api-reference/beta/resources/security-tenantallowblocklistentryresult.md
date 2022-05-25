---
title: "tenantAllowBlockListEntryResult resource type"
description: "tenant allow block list entry result"
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# tenantAllowBlockListEntryResult resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

One entry for tenant allow block list item which could be url, attachment or senders.

## Properties
| Property           | Type                          | Description                                             |
|:-------------------|:------------------------------|:--------------------------------------------------------|
| identity           | String                        | The identity.                                           |
| value              | String                        | The tenant allow block list value.                      |
| entryType          | tenantAllowBlockListEntryType | The tenant allow block list entry type.                 |
| expirationDateTime | DateTimeOffset                | The expiration date time for this entry.                |
| status             | longRunningOperationStatus    | The tenant allow block operation result for this entry. |

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

