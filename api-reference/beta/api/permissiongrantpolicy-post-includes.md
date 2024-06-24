---
title: "Create permissionGrantConditionSet in includes collection of permissionGrantPolicy"
description: "Add conditions under which a permission grant event is included in a permission grant policy."
ms.localizationpriority: medium
doc_type: apiPageType
ms.subservice: "entra-sign-in"
author: "psignoret"
---

# Create permissionGrantConditionSet in includes collection of permissionGrantPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add conditions under which a permission grant event is *included* in a permission grant policy. You do this by adding a [permissionGrantConditionSet](../resources/permissiongrantconditionset.md) to the **includes** collection of a  [permissionGrantPolicy](../resources/permissionGrantPolicy.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "permissiongrantpolicy_post_includes" } -->
[!INCLUDE [permissions-table](../includes/permissions/permissiongrantpolicy-post-includes-permissions.md)]

[!INCLUDE [rbac-permission-grant-preapproval-policy-write](../includes/rbac-for-apis/rbac-permission-grant-preapproval-policy-write.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /policies/permissionGrantPolicies/{id}/includes
```

## Request headers

| Name       | Description|
|:-----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-type | application/json. Required. |

## Request body

In the request body, supply a JSON representation of an [permissionGrantConditionSet](../resources/permissiongrantconditionset.md) object.

## Response

If successful, this method returns a `201 Created` response code and an [permissionGrantConditionSet](../resources/permissiongrantconditionset.md) object in the response body.

## Examples

### Example 1: Create a permission grant policy for client apps that are from verified publishers 

#### Request

In this example, *all* delegated permissions for client apps that are from verified publishers are included in the permission grant policy. Because all the other conditions from the [permissionGrantConditionSet](../resources/permissiongrantconditionset.md) were omitted, they take their default values, which in each case is the most-inclusive.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "truncated": true,
  "name": "permissiongrantpolicy_create_includes_for_verified_publishers"
}-->

```http
POST https://graph.microsoft.com/beta/policies/permissionGrantPolicies/{id}/includes
Content-Type: application/json

{
  "permissionType": "delegated",
  "clientApplicationsFromVerifiedPublisherOnly": true
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/permissiongrantpolicy-create-includes-for-verified-publishers-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/permissiongrantpolicy-create-includes-for-verified-publishers-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/permissiongrantpolicy-create-includes-for-verified-publishers-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/permissiongrantpolicy-create-includes-for-verified-publishers-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/permissiongrantpolicy-create-includes-for-verified-publishers-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/permissiongrantpolicy-create-includes-for-verified-publishers-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/permissiongrantpolicy-create-includes-for-verified-publishers-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/permissiongrantpolicy-create-includes-for-verified-publishers-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permissionGrantConditionSet"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "75ffda85-9314-43bc-bf19-554a7d079e96",
  "permissionClassification": "all",
  "permissionType": "delegated",
  "resourceApplication": "any",
  "permissions": ["all"],
  "clientApplicationIds": ["all"],
  "clientApplicationTenantIds": ["all"],
  "clientApplicationPublisherIds": ["all"],
  "clientApplicationsFromVerifiedPublisherOnly": true,
  "certifiedClientApplicationsOnly": false,
  "scopeSensitivityLabels": {
      "@odata.type": "#microsoft.graph.allScopeSensitivityLabels",
      "labelKind": "all"
  }
}
```
### Example 2: Create a permission grant policy for client apps that are Microsoft 365 certified  

#### Request

In this example, *all* delegated permissions for all client apps that are Microsoft 365 certified are included in the permission grant policy. Since having a verified publisher is a prerequisite for an app to be considered Microsoft 365 certified, it isn't necessary to explicitly require a verified publisher. Because all the other conditions from the [permissionGrantConditionSet](../resources/permissiongrantconditionset.md) were omitted, they take their default values, which in each case is the most-inclusive.



# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "truncated": true,
  "name": "permissiongrantpolicy_create_includes_for_M365_certified"
}-->

```http
POST https://graph.microsoft.com/beta/policies/permissionGrantPolicies/{id}/includes
Content-Type: application/json

{
  "permissionType": "delegated",
  "certifiedClientApplicationsOnly": true
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/permissiongrantpolicy-create-includes-for-m365-certified-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/permissiongrantpolicy-create-includes-for-m365-certified-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/permissiongrantpolicy-create-includes-for-m365-certified-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/permissiongrantpolicy-create-includes-for-m365-certified-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/permissiongrantpolicy-create-includes-for-m365-certified-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/permissiongrantpolicy-create-includes-for-m365-certified-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/permissiongrantpolicy-create-includes-for-m365-certified-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/permissiongrantpolicy-create-includes-for-m365-certified-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permissionGrantConditionSet"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "75ffda85-9314-43bc-bf19-554a7d079e96",
  "permissionClassification": "all",
  "permissionType": "delegated",
  "resourceApplication": "any",
  "permissions": ["all"],
  "clientApplicationIds": ["all"],
  "clientApplicationTenantIds": ["all"],
  "clientApplicationPublisherIds": ["all"],
  "clientApplicationsFromVerifiedPublisherOnly": true,
  "certifiedClientApplicationsOnly": true,
  "scopeSensitivityLabels": {
      "@odata.type": "#microsoft.graph.allScopeSensitivityLabels",
      "labelKind": "all"
  }
}
```
