---
title: "tenantAllowBlockListEntryResult resource type"
description: "Represents tenant allow block list entry result"
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# tenantAllowBlockListEntryResult resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents tenant allow block list entry result. It is an entry for tenant allow block list item which could be url, attachment or senders.

## Properties
| Property           | Type                          | Description                                             |
|:-------------------|:------------------------------|:--------------------------------------------------------|
| entryType          | tenantAllowBlockListEntryType | The tenant allow block list entry type.                 |
| expirationDateTime | DateTimeOffset                | The expiration date time for this entry.                |
| identity           | String                        | The identity.                                           |
| status             | longRunningOperationStatus    | The tenant allow block operation result for this entry. |
| value              | String                        | The tenant allow block list value.                      |

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

