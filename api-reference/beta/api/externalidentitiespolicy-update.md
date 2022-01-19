---
title: "Update externalIdentitiesPolicy"
description: "Update the properties of an externalIdentitiesPolicy object."
author: "KuiGithui"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Update externalIdentitiesPolicy
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [externalIdentitiesPolicy](../resources/externalidentitiespolicy.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.ReadWrite.ExternalIdentities|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Policy.ReadWrite.ExternalIdentities|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /policies/externalIdentitiesPolicy
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|allowDeletedIdentitiesDataRemoval|Boolean|The setting will inform AAD that cleanup of the external identities user information stored within the local tenant should be deleted (or not) when the user is deleted in their home directory. Required.|
|allowExternalIdentitiesToLeave|Boolean|The setting will inform AAD whether allow or restrict external identities to leave the tenant.If set to false, self service is not enabled, and therefore admin will need to manually perform the clean up. Required.|

## Response

If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

## Examples
## Example 1: Update or set external identity not to leave tenant.

### Request
<!-- {
  "blockType": "request",
  "name": "update_externalidentitiespolicy"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/policies/externalidentitiespolicy

{
  "allowExternalIdentitiesToLeave":false
}
```

### Response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

