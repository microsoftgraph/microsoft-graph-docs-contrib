---
title: "List threatIntelligencePolicies for a filteringProfile"
description: "Get a list of policies associated with a threat intelligence policy link."
author: "fgomulka"
ms.date: 06/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# List threatIntelligencePolicies for a filteringProfile

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [threatIntelligencePolicy](../resources/networkaccess-threatintelligencepolicy.md) objects associated with a threat intelligence policy link.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-threatintelligencepolicylink-list-policy-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-threatintelligencepolicylink-list-policy-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /networkAccess/filteringProfiles/{filteringProfileId}/policies/{policyLinkId}/policy
```

## Optional query parameters

This method supports the `$select`, `$top`, `expand`, and `$filter` OData query parameters to help customize the response.  For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [threatIntelligencePolicy](../resources/networkaccess-threatintelligencepolicy.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "threatintelligencepolicylink_list_policy"
}
-->
```http
GET https://graph.microsoft.com/beta/networkAccess/filteringProfiles/{filteringProfileId}/policies/{policyLinkId}/policy
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.policy"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.networkaccess.threatIntelligencePolicy",
      "id": "a8352c78-90c6-4edd-aaca-9dc4292e7750",
      "name": "Threat Intel Policy",
      "description": "",
      "version": "1.0.0",
      "lastModifiedDateTime": "2025-06-18T17:34:25.8207682Z",
      "settings": {
        "defaultAction": "allow"
      }
    }
  ]
}
```

