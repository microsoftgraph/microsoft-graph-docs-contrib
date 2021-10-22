---
title: "Update entitlementManagementSettings"
description: "Update a entitlementManagementSettings object to change one or more of its properties."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---
# Update entitlementManagementSettings

Namespace: microsoft.graph


Update an existing [entitlementManagementSettings](../resources/entitlementmanagementsettings.md) object to change one or more of its properties.


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)     | EntitlementManagement.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported. |
|Application                            | EntitlementManagement.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /identityGovernance/entitlementManagement/settings
```

## Request headers
| Name         | Description |
|:-------------|:------------|
| Authorization | Bearer \{token\}. Required. |
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of the parameters of an [entitlementManagementSettings](../resources/entitlementmanagementsettings.md) object.
## Response
If successful, this method returns a `204 No Content` response code.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_entitlementmanagementsettings"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/settings
Content-Type: application/json
Content-length: 187

{
  "externalUserLifecycleAction": "String",
  "durationUntilExternalUserDeletedAfterBlocked": "String (duration)"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "externalUserLifecycleAction": "String",
  "durationUntilExternalUserDeletedAfterBlocked": "String (duration)"
}
```


