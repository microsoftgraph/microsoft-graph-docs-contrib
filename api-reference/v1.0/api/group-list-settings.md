---
title: "List settings"
description: "Retrieve a list of group setting objects."
author: "psaffaie"
ms.localizationpriority: medium
ms.prod: "groups"
doc_type: apiPageType
---

# List settings

Namespace: microsoft.graph

Retrieve a list of tenant-level or group-specific group settings objects.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

### List tenant-wide settings

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | Directory.Read.All, Directory.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Directory.Read.All, Directory.ReadWrite.All |

### List group-specific settings

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | Group.Read.All, Group.ReadWrite.All         |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Group.Read.All, Group.ReadWrite.All         |

## HTTP request

<!-- { "blockType": "ignored" } -->

List tenant-wide settings.

```http
GET /groupSettings
```

<!-- { "blockType": "ignored" } -->

List group-specific settings.

```http
GET /groups/{groupId}/settings
```

## Optional query parameters

This method supports the `$select` [OData query parameter](/graph/query-parameters) to help customize the response.

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [groupSetting](../resources/groupsetting.md) objects in the response body.

## Examples

### Example 1: Retrieve the tenant-level group settings

#### Request

The following is an example of a request.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "get_groupsettings_tenant_level"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/groupSettings
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-groupsettings-tenant-level-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-groupsettings-tenant-level-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-groupsettings-tenant-level-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-groupsettings-tenant-level-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-groupsettings-tenant-level-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.groupSetting",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#groupSettings",
  "value": [
    {
      "id": "f0b2d6f5-097d-4177-91af-a24e530b53cc",
      "displayName": "Group.Unified",
      "templateId": "62375ab9-6b52-47ed-826b-58e47e0e304b",
      "values": [
        {
          "name": "EnableMIPLabels",
          "value": "true"
        },
        {
          "name": "CustomBlockedWordsList",
          "value": ""
        },
        {
          "name": "EnableMSStandardBlockedWords",
          "value": "true"
        },
        {
          "name": "ClassificationDescriptions",
          "value": ""
        },
        {
          "name": "DefaultClassification",
          "value": ""
        },
        {
          "name": "PrefixSuffixNamingRequirement",
          "value": "[Contoso-][GroupName]"
        },
        {
          "name": "AllowGuestsToBeGroupOwner",
          "value": "false"
        },
        {
          "name": "AllowGuestsToAccessGroups",
          "value": "true"
        },
        {
          "name": "GuestUsageGuidelinesUrl",
          "value": "https://privacy.contoso.com/privacystatement"
        },
        {
          "name": "GroupCreationAllowedGroupId",
          "value": ""
        },
        {
          "name": "AllowToAddGuests",
          "value": "true"
        },
        {
          "name": "UsageGuidelinesUrl",
          "value": ""
        },
        {
          "name": "ClassificationList",
          "value": ""
        },
        {
          "name": "EnableGroupCreation",
          "value": "true"
        }
      ]
    }
  ]
}
```

### Example 2: Retrieve the group settings for a specific group

#### Request

The following is an example of a request.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "get_groupsettings_for_a_group"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/groups/05aa6a98-956a-45c0-b13b-88076a23f2cd/settings
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-groupsettings-for-a-group-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-groupsettings-for-a-group-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-groupsettings-for-a-group-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-groupsettings-for-a-group-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-groupsettings-for-a-group-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.groupSetting"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#groupSettings",
    "value": [
        {
            "id": "a06fa228-3042-4662-bd09-33e298da1afe",
            "displayName": "Group.Unified.Guest",
            "templateId": "08d542b9-071f-4e16-94b0-74abb372e3d9",
            "values": [
                {
                    "name": "AllowToAddGuests",
                    "value": "false"
                }
            ]
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List groupSettings",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->
