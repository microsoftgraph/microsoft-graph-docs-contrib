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

Represents result of tenant allow block list entry. It is an entry for tenant allow block list item that could be url, attachment or senders.

## Properties
| Property           | Type                          | Description                                             |
|:-------------------|:------------------------------|:--------------------------------------------------------|
| entryType          | tenantAllowBlockListEntryType | The entry type of tenant allow block list. The possible values are: `url`, `fileHash`, `sender` and `recipient`.  |
| expirationDateTime | DateTimeOffset                | It is used to specify when will this entry expire in date time? |
| identity           | String                        | The identity.                                           |
| status             | longRunningOperationStatus    | It is used to specify whether the tenant allow block list entry creation operation was successful or not. The possible values are: `notStarted`, `running`, `succeeded`, `failed` and `skipped`. |
| value              | String                        | It is used to specify the value of the created Tenant allow block list entry.  |

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

