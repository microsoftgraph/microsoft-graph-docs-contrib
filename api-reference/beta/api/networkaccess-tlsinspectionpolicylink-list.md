---
title: "List tlsInspectionPolicyLink objects"
description: "Get a list of the tlsInspectionPolicyLink objects on a filtering profile."
author: "sisharm"
ms.date: 05/23/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# List tlsInspectionPolicyLink objects

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [tlsInspectionPolicyLink](../resources/networkaccess-tlsinspectionpolicylink.md) objects on a filtering profile.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_tlsinspectionpolicylink_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-tlsinspectionpolicylink-list-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /networkAccess/filteringProfiles/{filteringProfileId}/policies?$filter=isof('microsoft.graph.networkaccess.tlsInspectionPolicyLink')
```

## Optional query parameters

This method supports the `$top`, `$count`, `$skip`, `$expand`, `$filter` and `$select` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [tlsInspectionPolicyLink](../resources/networkaccess-tlsinspectionpolicylink.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_tlsinspectionpolicylink",
  "sampleKeys": ["d734d2de-f2df-4b4a-8c4c-5111f8878275"]
}
-->
```http
GET https://graph.microsoft.com/beta/networkAccess/filteringProfiles/d734d2de-f2df-4b4a-8c4c-5111f8878275/policies?$filter=isof('microsoft.graph.networkaccess.securityProviderPolicyLink')
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.tlsInspectionPolicyLink"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.networkaccess.tlsInspectionPolicyLink",
      "id": "70405a6c-b823-c521-c981-de9d08a21f8f",
      "state": "enabled",
      "version": "1.0",
      "policy": {
        "@odata.type": "#microsoft.graph.networkaccess.tlsInspectionPolicyPolicy",
        "id": "b712c469-e7cd-e7cb-738f-94b199570b0d",
        "name": "Default TLS Inspection Policy",
        "description": "Policy for inspecting TLS traffic",
        "version": "1.0.0",
        "lastModifiedDateTime": "2025-06-02T20:54:19.146638Z",
        "settings": {
            "defaultAction": "bypass"
        }
      }
    }
  ]
}
```
