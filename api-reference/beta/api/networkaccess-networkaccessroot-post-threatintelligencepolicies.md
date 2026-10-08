---
title: "Create threatIntelligencePolicy"
description: "Create a new threatIntelligencePolicy object."
author: "fgomulka"
ms.date: 06/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# Create threatIntelligencePolicy

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [threatIntelligencePolicy](../resources/networkaccess-threatintelligencepolicy.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_networkaccessroot_post_threatintelligencepolicies" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-networkaccessroot-post-threatintelligencepolicies-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /networkAccess/threatIntelligencePolicies
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [microsoft.graph.networkaccess.threatIntelligencePolicy](../resources/networkaccess-threatintelligencepolicy.md) object.

You can specify the following properties when creating a **threatIntelligencePolicy**.

|Property|Type|Description|
|:---|:---|:---|
|name|String|The display name of the threat intelligence policy. Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md). Required.|
|description|String|A description of the threat intelligence policy. Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md). Optional.|
|version|String|The version of the policy, used for tracking changes. Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md). Required.|
|settings|[microsoft.graph.networkaccess.threatIntelligencePolicySettings](../resources/networkaccess-threatintelligencepolicysettings.md)|Settings that define how the threat intelligence policy operates and evaluates threats. Required.|



## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.networkaccess.threatIntelligencePolicy](../resources/networkaccess-threatintelligencepolicy.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_threatintelligencepolicy_from_"
}
-->
```http
POST https://graph.microsoft.com/beta/networkAccess/threatIntelligencePolicies
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.threatIntelligencePolicy",
  "name": "Malicious Domains Policy",
  "description": "Policy to block traffic to known malicious domains based on threat intelligence",
  "version": "1.0",
  "settings": {
    "@odata.type": "microsoft.graph.networkaccess.threatIntelligencePolicySettings",
    "defaultAction": "block"
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-threatintelligencepolicy-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-threatintelligencepolicy-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-threatintelligencepolicy-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-threatintelligencepolicy-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-threatintelligencepolicy-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-threatintelligencepolicy-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-threatintelligencepolicy-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.threatIntelligencePolicy"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.threatIntelligencePolicy",
  "id": "b8521f33-fa6d-a78b-308c-b6dfdf1c1798",
  "name": "Malicious Domains Policy",
  "description": "Policy to block traffic to known malicious domains based on threat intelligence",
  "version": "1.0",
  "kind": "domainReputation",
  "lastModifiedDateTime": "2025-06-16T14:30:51Z",
  "settings": {
    "@odata.type": "microsoft.graph.networkaccess.threatIntelligencePolicySettings",
    "defaultAction": "block"
  }
}
```

