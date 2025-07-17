---
title: "group: validateProperties"
description: "Validate that a Microsoft 365 group's display name or mail nickname complies with naming policies."
ms.localizationpriority: medium
author: "yuhko-msft"
ms.reviewer: "mbhargav, khotzteam, aadgroupssg"
ms.subservice: "entra-groups"
doc_type: "apiPageType"
ms.date: 08/13/2024
---

# group: validateProperties

Namespace: microsoft.graph

Validate that a Microsoft 365 [group's](../resources/group.md) display name or mail nickname complies with naming policies. Clients can use this API to determine whether a display name or mail nickname is valid before trying to [update](group-update.md) a Microsoft 365 group. To validate the properties before creating a group, use the [directoryobject:validateProperties](directoryobject-validateproperties.md) function.

The following policy validations are performed for the display name and mail nickname properties:

1. Validate the prefix and suffix naming policy
2. Validate the custom banned words policy

This API only returns the first validation failure that is encountered. If the properties fail multiple validations, only the first validation failure is returned. However, you can validate both the mail nickname and the display name and receive a collection of validation errors if you are only validating the prefix and suffix naming policy. To learn more about configuring naming policies, see [Configure naming policy](/azure/active-directory/users-groups-roles/groups-naming-policy#configure-naming-policy-in-powershell).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "group_validateproperties" } -->
[!INCLUDE [permissions-table](../includes/permissions/group-validateproperties-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /groups/{id}/validateProperties
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json          |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter        | Type   | Description                                                                                                                                                              |
| :--------------- | :----- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| displayName      | String | The display name of the group to validate. The property is not individually required. However, at least one property (**displayName** or **mailNickname**) is required.  |
| mailNickname     | String | The mail nickname of the group to validate. The property is not individually required. However, at least one property (**displayName** or **mailNickname**) is required. |
| onBehalfOfUserId | Guid   | The ID of the user to impersonate when calling the API. The validation results are for the **onBehalfOfUserId's** attributes and roles.                                  |

## Response

If successful and there are no validation errors, the method returns `204 No Content` response code. It doesn't return anything in the response body.

If the request is invalid, the method returns `400 Bad Request` response code. An error message with details about the invalid request is returned in the response body.

If there is a validation error. The method returns `422 Unprocessable Entity` response code. An error message and a collection of error details is returned in the response body.

## Examples

### Example 1: Successful validation request

This is an example of a successful validation request.

#### Request

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "group_validateproperties"
}-->

```http
POST https://graph.microsoft.com/v1.0/groups/{id}/validateProperties
Content-type: application/json

{
  "displayName": "Myprefix_test_mysuffix",
  "mailNickname": "Myprefix_test_mysuffix",
  "onBehalfOfUserId": "onBehalfOfUserId-value"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/group-validateproperties-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/group-validateproperties-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/group-validateproperties-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/group-validateproperties-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/group-validateproperties-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/group-validateproperties-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/group-validateproperties-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/group-validateproperties-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
} -->

```http
HTTP/1.1 204 No Content
```

### Example 2: Request with validation errors

This is an example of a request with validation errors.

#### Request

```http
POST https://graph.microsoft.com/v1.0/groups/{id}/validateProperties
Content-type: application/json

{
  "displayName": "MyPrefix_test_mysuffix",
  "mailNickname": "MyPrefix_test_mysuffix"
}
```

#### Response

```http
HTTP/1.1 422
Content-type: application/json

{
  "error": {
    "code": "Request_UnprocessableEntity",
    "message": "The values provided contain one or more validation errors.",
    "innerError": {
      "request-id": "id-value",
      "date": "date-value"
    },
    "details": [
      {
        "target": "mailNickname",
        "code": "PropertyConflict",
        "message": "Another object with the same value for property mailNickname already exists."
      }
    ]
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "group: validateProperties",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->
