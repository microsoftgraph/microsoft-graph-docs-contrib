---
title: "Update mobileAppManagementPolicy"
description: "Update the properties of a mobile app management policy object."
author: "ravennMSFT"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
ms.date: 10/30/2024
---

# Update mobileAppManagementPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "mobileappmanagementpolicies_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/mobileappmanagementpolicies-update-permissions.md)]

[!INCLUDE [rbac-mam-mdm-policies-apis-write](../includes/rbac-for-apis/rbac-mam-mdm-policies-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
PATCH /policies/mobileAppManagementPolicies/{id}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) object.

In the request body, supply the values for fields listed below that should be updated. **Note:** You cannot use `PATCH` operation for `appliesTo` with the other properties.

|Property|Type|Description|
|:---|:---|:---|
|appliesTo|policyScope|Determines the groups this policy setting applies to. Possible values are: `none`, `all`, `selected` **Important:** `selected` cannot be used when specifying this property. Use [includedGroups](../api/mobileappmanagementpolicies-post-includedgroups.md) to add specific groups.|
|complianceUrl|String|Compliance URL of the mobility management application|
|discoveryUrl|String|Discovery URL of the mobility management application|
|termsOfUseUrl|String|Terms of Use URL of the mobility management application|

## Response

If successful, this method returns a `200 OK` response code and an updated [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) object in the response body.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_mobilitymanagementpolicy_for_ID"
}
-->

``` http
PATCH https://graph.microsoft.com/beta/policies/mobileAppManagementPolicies/ab90bacf-55a3-4a3e-839a-aa4b74e4f020
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.mobilityManagementPolicy",
  "complianceUrl": "https://portal.mg.contoso.com/?portalAction=Compliance",
  "discoveryUrl": "https://enrollment.mg.contoso.com/enrollmentserver/discovery.svc",
  "termsOfUseUrl": "https://portal.mg.contoso.com/TermsofUse.aspx"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-mobilitymanagementpolicy-for-id-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-mobilitymanagementpolicy-for-id-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-mobilitymanagementpolicy-for-id-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-mobilitymanagementpolicy-for-id-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-mobilitymanagementpolicy-for-id-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-mobilitymanagementpolicy-for-id-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-mobilitymanagementpolicy-for-id-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-mobilitymanagementpolicy-for-id-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```
