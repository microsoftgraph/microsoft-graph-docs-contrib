---
title: "Update compliantNetworkNamedLocation"
description: "Update the properties of a compliantNetworkNamedLocation object."
author: "ckeatss"
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# Update compliantNetworkNamedLocation

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [compliantNetworkNamedLocation](../resources/compliantnetworknamedlocation.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Policy.Read.All and Policy.ReadWrite.ConditionalAccess |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Policy.Read.All and Policy.ReadWrite.ConditionalAccess |

[!INCLUDE [rbac-conditionalaccess-apis-write](../includes/rbac-for-apis/rbac-conditionalaccess-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /identity/conditionalAccess/namedLocations/{id}
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that aren't included in the request body maintains their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

You must specify the **@odata.type** as `#microsoft.graph.compliantNetworkNamedLocation`.


| Property     | Type        | Description |
|:-------------|:------------|:------------|
|isTrusted|Boolean|The value is `true` if this location is explicitly trusted.|



## Response

If successful, this method returns a `204 No content` response code. It doesn't return anything in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_compliantnetworknamedlocation"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/compliantNetworkNamedLocation
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.compliantNetworkNamedLocation",
  "isTrusted": true
}
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

