---
title: "Update identityUserFlowAttributeAssignment"
description: "Update the properties of a userAttributeAssignments object."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Update identityUserFlowAttributeAssignment

Namespace: microsoft.graph

Update the properties of a identityUserFlowAttributeAssignment object.

[!INCLUDE [national-cloud-support](../../includes/global-china.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identityuserflowattributeassignment_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/identityuserflowattributeassignment-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
PATCH /identity/b2xUserFlows/{id}/userAttributeAssignments/{id}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [identityUserFlowAttributeAssignment](../resources/identityuserflowattributeassignment.md) object.

The following table shows the properties that are available to update in the [identityUserFlowAttributeAssignment](../resources/identityuserflowattributeassignment.md).

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the identityUserFlowAttribute within a user flow.|
|isOptional|Boolean|Determines whether the identityUserFlowAttribute is optional. `true` means the user does not have to provide a value. `false` means the user cannot complete sign up without providing a value.|
|requiresVerification|Boolean|Determines whether the identityUserFlowAttribute requires verification. This is only used for verifying the user's phone number or email address.|
|userAttributeValues|[userAttributeValuesItem](../resources/userattributevaluesitem.md) collection|The input options for the user flow attribute. Only applicable when the userInputType is `radioSingleSelect`, `dropdownSingleSelect`, or `checkboxMultiSelect`.|
|userInputType|identityUserFlowAttributeInputType|The input type of the user flow attribute. Possible values are: `textBox`, `dateTimeDropdown`, `radioSingleSelect`, `dropdownSingleSelect`, `emailBox`, `checkboxMultiSelect`.|

## Response

If successful, this method returns a `200 OK` response code and an updated [identityUserFlowAttributeAssignment](../resources/identityuserflowattributeassignment.md) object in the response body.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_userattributeassignments"
}
-->

``` http
PATCH https://graph.microsoft.com/v1.0/identity/b2xUserFlows/{b2xIdentityUserFlowId}/userAttributeAssignments/{id}
Content-Type: application/json

{
  "userInputType": "textBox"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-userattributeassignments-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-userattributeassignments-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-userattributeassignments-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-userattributeassignments-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-userattributeassignments-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-userattributeassignments-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-userattributeassignments-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-userattributeassignments-python-snippets.md)]
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
