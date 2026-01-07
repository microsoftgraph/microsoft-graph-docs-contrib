---
title: "List policy"
description: "Get the filtering policy resources from the policy profile."
author: Moti-ba
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: apiPageType
ms.date: 08/13/2024
---

# List policy
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the filtering policy resources from the policy profile.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_policylink_list_policy" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-policylink-list-policy-permissions.md)]

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
This method does not support OData query parameters.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [filteringPolicyLink](../resources/networkaccess-filteringpolicylink.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_policy"
}
-->
```http
GET https://graph.microsoft.com/beta/networkaccess/filteringProfiles/78858adc-db32-435e-96f6-dd887511bb20/policies/
```

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.networkaccess.policy)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "value": [
        {
            "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/filteringProfiles(policies(policy()))/$entity",
            "priority": 105,
            "createdDateTime": "2023-07-31T22:34:09Z",
            "id": "78858adc-db32-435e-96f6-dd887511bb20",
            "name": "Default Policy",
            "description": null,
            "state": "enabled",
            "version": "1.0.0",
            "lastModifiedDateTime": "2023-08-07T15:54:15Z",
            "policies@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/filteringProfiles('78858adc-db32-435e-96f6-dd887511bb20')/policies(policy())"
        }
    ]
}
```

