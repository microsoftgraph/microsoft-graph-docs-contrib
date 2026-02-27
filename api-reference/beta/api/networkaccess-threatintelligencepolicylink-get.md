---
title: "Get threatIntelligencePolicyLink"
description: "Read the properties and relationships of a threatIntelligencePolicyLink object."
author: "fgomulka"
ms.date: 06/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# Get threatIntelligencePolicyLink

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [threatIntelligencePolicyLink](../resources/networkaccess-threatintelligencepolicylink.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-threatintelligencepolicylink-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-threatintelligencepolicylink-get-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /networkAccess/filteringProfiles/{filteringProfileId}/policies/{policyLinkId}
```

## Optional query parameters

This method supports the `$select` and `expand` OData query parameters to help customize the response.  For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.networkaccess.threatIntelligencePolicyLink](../resources/networkaccess-threatintelligencepolicylink.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_threatintelligencepolicylink"
}
-->
```http
GET https://graph.microsoft.com/beta/networkAccess/filteringProfiles/{filteringProfileId}/policies/{policyLinkId}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.threatIntelligencePolicyLink"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.networkaccess.threatIntelligencePolicyLink",
    "id": "c1f610c8-5a8d-4563-9343-87422c2e0d5a",
    "state": "enabled",
    "version": "1.0.0",
    "policy": {
        "@odata.type": "#microsoft.graph.networkaccess.threatIntelligencePolicy",
        "id": "2121dda1-3156-437e-88d3-a58745916f5d",
        "name": "Threat Intel policy",
        "description": "Sample description for Threat Intel policy",
        "version": "1.0.0",
        "lastModifiedDateTime": "2025-05-22T15:14:57.9011461Z",
        "settings": {
            "defaultAction": "allow"
        }
    }
}
```

