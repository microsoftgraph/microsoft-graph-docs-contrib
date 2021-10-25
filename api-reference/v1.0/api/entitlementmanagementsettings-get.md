---
title: "Get entitlementManagementSettings"
description: "Retrieve the properties of the entitlementManagementSettings object."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---
# Get entitlementManagementSettings

Namespace: microsoft.graph

Retrieve the properties of an [entitlementManagementSettings](../resources/entitlementmanagementsettings.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | EntitlementManagement.Read.All, EntitlementManagement.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | EntitlementManagement.Read.All, EntitlementManagement.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/entitlementManagement/settings
```

## Optional query parameters

This method does not support the OData query parameters to customize the response.

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer \{token\}. Required. |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [entitlementManagementSettings](../resources/entitlementmanagementsettings.md) object in the response body.
## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_entitlementmanagementsettings"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/settings
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.entitlementManagementSettings"
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


