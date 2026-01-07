---
title: "numberAssignment: updateNumber"
description: "Update an existing telephone number with optional details"
author: "pavellatif"
ms.date: 07/23/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# numberAssignment: updateNumber

Namespace: microsoft.graph.teamsAdministration

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This method is used to update an existing number with optional attributes. Currently supported attributes are `locationId`, `networkSiteId`, and `reverseNumberLookupOptions`.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "teamsadministration_numberassignment_updatenumber" } -->
[!INCLUDE [permissions-table](../includes/permissions/teamsadministration-numberassignment-updatenumber-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /admin/teams/telephoneNumberManagement/numberAssignments/updateNumber
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|telephoneNumber|String|Mandatory. The telephone number intended to be assigned.|
|locationId|String|Indicates the emergency address identifier set on the phone number. Passing an empty string clears the locationId, while passing `null` or not including the field preserves the existing value.|
|networkSiteId|String|Indicates the updated networkSiteId. Use an empty string to clear the existing networkSiteId, or use `null`/omit the field to preserve the existing value.|
|reverseNumberLookupOptions|String collection|This parameter is used to control the behavior of reverse number lookup (RNL) for a phone number. When RNL contains `skipInternalVoip`, an internal call to this phone number doesn't attempt to pass through internal VoIP via reverse number lookup in Microsoft Teams. Instead, the call establishes through external Public Switched Telephone Network (PSTN) connectivity directly.|

## Response

If successful, this method returns a `200 OK` response code.

## Examples

### Example 1: Update location ID

#### Request

The following example shows a request to update `locationId` of a telephone number.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_updateNumber1",
}
-->
```http
POST https://graph.microsoft.com/beta/admin/teams/telephoneNumberManagement/numberAssignments/updateNumber
Content-Type: application/json

{
  "telephoneNumber": "+12061234567",
  "locationId": "93cb8a70-b4af-41df-9928-d07607e21776",
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/post-updatenumber1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/post-updatenumber1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/post-updatenumber1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-updatenumber1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/post-updatenumber1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/post-updatenumber1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 200 OK
```

### Example 2: Update network site ID

#### Request

The following example shows a request to update `networkSiteId` of a telephone number.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_updateNumber2",
}
-->
```http
POST https://graph.microsoft.com/beta/admin/teams/telephoneNumberManagement/numberAssignments/updateNumber
Content-Type: application/json

{
  "telephoneNumber": "+12061234567",
  "networkSiteId": "fff21455-0f84-4a6b-babd-0a9b46971a62",
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/post-updatenumber2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/post-updatenumber2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/post-updatenumber2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-updatenumber2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/post-updatenumber2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/post-updatenumber2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 200 OK
```

### Example 3: Update reverse number lookup options

#### Request

The following example shows a request to update `reverseNumberLookupOptions` for telephone number associated with resource account.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_updateNumber3",
}
-->
```http
POST https://graph.microsoft.com/beta/admin/teams/telephoneNumberManagement/numberAssignments/updateNumber
Content-Type: application/json

{
  "telephoneNumber": "+12061234567",
  "reverseNumberLookupOptions": ["skipInternalVoip"],
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/post-updatenumber3-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/post-updatenumber3-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/post-updatenumber3-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-updatenumber3-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/post-updatenumber3-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/post-updatenumber3-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 200 OK
```

### Example 4: Clear location ID

#### Request

The following example shows a request to update `locationId` of a telephone number.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_updateNumber4",
}
-->
```http
POST https://graph.microsoft.com/beta/admin/teams/telephoneNumberManagement/numberAssignments/updateNumber
Content-Type: application/json

{
  "telephoneNumber": "+12061234567",
  "locationId": "",
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/post-updatenumber4-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/post-updatenumber4-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/post-updatenumber4-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-updatenumber4-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/post-updatenumber4-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/post-updatenumber4-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 200 OK
```

