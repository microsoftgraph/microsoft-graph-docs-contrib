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

Represents tenant allow or block list action. When admin creates email threat submission, tenant allow block list operation could be provided. When tenant allow block list operation is provided, the threat submission will auto add releated items (urls/attachments/senders) into tenant allow block list.

## Properties
| Property           | Type                                        | Description                                                                      |
|:-------------------|:--------------------------------------------|:---------------------------------------------------------------------------------|
| action             | tenantAllowBlockListAction                  | The tenant allow block list action. The possible values are: `allow` and `block`.|
| expirationDateTime | DateTimeOffset                              | The tenant allow block list auto expiration date time.                           |
| note               | String                                      | The tenant allow block list note string.                                         |
| results            | Collection([security.tenantAllowBlockListEntryResult](../resources/security-tenantallowblocklistentryresult.md)) | The result which contains tenant allow block list items of the email submission. |

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

