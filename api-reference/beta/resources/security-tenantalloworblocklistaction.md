---
title: "tenantAllowOrBlockListAction resource type"
description: "Represents tenant the allow or block list action"
author: "caigen"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# tenantAllowOrBlockListAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the tenant allow-or-block list action. When an admin creates an email threat submission, a tenant allow-or-block list operation can also be provided. When a tenant allow-or-block list operation is provided, the threat submission will automatically add related items (URLs, attachments, senders) to the tenant allow-or-block list.

## Properties
| Property           | Type                                        | Description                                                                      |
|:-------------------|:--------------------------------------------|:---------------------------------------------------------------------------------|
| action             | tenantAllowBlockListAction                  | Specifies whether the tenant allow-or-block list is an allow or block. The possible values are: `allow`, `block`, and `unkownFutureValue`.|
| expirationDateTime | DateTimeOffset                              | Specifies when the tenant allow-block-list expires in date time.  |
| note               | String                                      | Specifies the note added to the tenant allow-or-block list entry in the format of string. |
| results            | Collection([security.tenantAllowBlockListEntryResult](../resources/security-tenantallowblocklistentryresult.md)) | Contains the result of the submission that lead to the tenant allow-block-list entry creation. |

## Relationships
None.

## JSON representation
Here's a JSON representation of the resource.
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

