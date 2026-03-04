---
title: "List filteringPolicyLink objects"
description: "Get a list of the filteringPolicyLink objects and their properties."
author: Moti-ba
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: apiPageType
ms.date: 08/13/2024
---

# List filteringPolicyLink objects
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [filteringPolicyLink](../resources/networkaccess-filteringpolicylink.md) objects and their properties. The associated policy can be of the following types:

- [filteringPolicy](../resources/networkaccess-filteringpolicy.md)
- [threatIntelligencePolicy](../resources/networkaccess-threatintelligencepolicy.md)
- [tlsInspectionPolicy](../resources/networkaccess-tlsinspectionpolicy.md)

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_filteringpolicylink_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-filteringpolicylink-list-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /filteringProfiles/{filteringProfileId}/policies
```

## Optional query parameters
This method does not support OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [filteringPolicyLink](../resources/networkaccess-filteringpolicylink.md) objects in the response body.

## Examples

### Example 1: List filteringPolicyLink objects

#### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_filteringpolicylink"
}
-->
```http
GET https://graph.microsoft.com/beta/networkaccess/filteringProfiles/519085fd-efb2-437c-af22-04bff0c2b571/policies
```

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.networkaccess.filteringPolicyLink)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/filteringProfiles('519085fd-efb2-437c-af22-04bff0c2b571')/policies",
    "value": [
        {
            "@odata.type": "#microsoft.graph.networkaccess.filteringPolicyLink",
            "id": "0f55c3c1-5502-48a6-8c49-570448226368",
            "state": "enabled",
            "version": "1.0.0",
            "priority": 100,
            "action": "block",
            "loggingState": "enabled",
            "lastModifiedDateTime": "2023-06-20T23:14:03Z",
            "createdDateTime": "2023-06-20T23:14:03Z",
            "policy": {
                "@odata.type": "#microsoft.graph.networkaccess.filteringPolicy",
                "id": "9f875dd1-c1d4-484a-a967-b428e4e1cafe",
                "name": "Social Media siteswer",
                "description": null,
                "version": "1.0.0",
                "lastModifiedDateTime": "2023-07-14T22:53:24Z",
                "createdDateTime": "2023-06-05T23:43:53Z"
            }
        }
    ]
}
```

### Example 2: List tlsInspectionPolicyLink objects

#### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_tlsinspectionpolicylink",
  "sampleKeys": ["d734d2de-f2df-4b4a-8c4c-5111f8878275"]
}
-->
```http
GET https://graph.microsoft.com/beta/networkAccess/filteringProfiles/d734d2de-f2df-4b4a-8c4c-5111f8878275/policies?$filter=isof('microsoft.graph.networkaccess.tlsInspectionPolicyLink')
```

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.networkaccess.tlsInspectionPolicyLink)"
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
        "@odata.type": "#microsoft.graph.networkaccess.tlsInspectionPolicy",
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

