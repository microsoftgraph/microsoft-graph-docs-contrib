---
title: "Create filteringPolicy"
description: "Create a new filteringPolicy object."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: global-secure-access
doc_type: apiPageType
---

# Create filteringPolicy
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [filteringPolicy](../resources/networkaccess-filteringpolicy.md) object. 

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_filteringpolicy_post_policyrules" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-filteringpolicy-post-policyrules-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /networkaccess/filteringPolicies

```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md) object.

You can specify the following properties

|Property|Type|Description|
|:---|:---|:---|
|name|String|Display Name. Required.|
|policyRules|Collection(microsoft.graph.networkaccess.policyRule)|policyRules maintains the definition of the policy ruleset that makes up the core definition of a policy. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_policyrule_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/networkaccess/filteringPolicies
Content-Type: application/json

{
    "name": "Block Social",
    "policyRules": [
        {
            "@odata.type": "#microsoft.graph.networkaccess.webCategoryFilteringRule",
            "name": "Block Social",
            "ruleType": "webCategory",
            "destinations": [
                {
                    "@odata.type": "#microsoft.graph.networkaccess.webCategory",
                    "name": "SocialNetworking"
                }
            ]
        }
    ],
    "action": "block",
    "description": "Block Social Sites",
    "@odata.type": "#microsoft.graph.networkaccess.filteringPolicy"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-policyrule-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-policyrule-from--cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-policyrule-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-policyrule-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-policyrule-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-policyrule-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-policyrule-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.filteringPolicy"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/filteringPolicies/$entity",
    "id": "60aced7d-2dbe-4ffc-bcd3-1321b8425cbf",
    "name": "Block Social",
    "description": "Block Social Sites",
    "version": "1.0.0",
    "lastModifiedDateTime": "2023-11-01T06:04:31Z",
    "createdDateTime": "2023-11-01T06:04:31Z",
    "action": "block"
}
```

