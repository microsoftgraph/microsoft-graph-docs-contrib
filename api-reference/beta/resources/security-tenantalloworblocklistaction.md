---
title: "tenantAllowOrBlockListAction resource type"
description: "Represents tenant allow or block list action"
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# tenantAllowOrBlockListAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the tenant allow-or-block list action. When admin creates email threat submission, tenant allow block list operation can also be provided. When tenant allow block list operation is provided, the threat submission will auto add related items (urls/attachments/senders) into tenant allow block list.

## Properties
| Property           | Type                                        | Description                                                                      |
|:-------------------|:--------------------------------------------|:---------------------------------------------------------------------------------|
| action             | tenantAllowBlockListAction                  | Specifies whether the tenant allow block list is an allow or block. The possible values are: `allow` and `block`.|
| expirationDateTime | DateTimeOffset                              | Specifies when the tenant allow-block-list expires in date time.  |
| note               | String                                      | Specifies the note added to the tenant allow block list entry in the format of string. |
| results            | Collection([security.tenantAllowBlockListEntryResult](../resources/security-tenantallowblocklistentryresult.md)) | It contains the result of the submission which lead to the tenant allow-block-list entry creation. |

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

