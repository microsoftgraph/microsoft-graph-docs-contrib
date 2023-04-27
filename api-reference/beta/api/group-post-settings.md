---
title: "Create settings"
description: "Use this API to create a new directory setting for the group."
author: "psaffaie"
ms.localizationpriority: medium
ms.prod: "groups"
doc_type: apiPageType
---

# Create settings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new setting based on the templates available in [directorySettingTemplates](../resources/directorysettingtemplate.md). These settings can be at the tenant-level or at the group level.

Group settings apply to only Microsoft 365 groups. The template named `Group.Unified` can be used to configure tenant-wide Microsoft 365 group settings, while the template named `Group.Unified.Guest` can be used to configure group-specific settings.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | Directory.ReadWrite.All                     |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Directory.ReadWrite.All                     |

## HTTP request

Create a tenant-wide setting.

<!-- { "blockType": "ignored" } -->

```http
POST /settings
```

Create a group-specific setting.

<!-- { "blockType": "ignored" } -->

```http
POST /groups/{id}/settings
```

## Request headers

| Name          | Description              |
| :------------ | :----------------------- |
| Authorization | Bearer {token}. Required |

## Request body

In the request body, supply a JSON representation of [directorySetting](../resources/directorysetting.md) object.

## Response

If successful, this method returns `201 Created` response code and [directorySetting](../resources/directorysetting.md) object in the response body.

## Examples

### Example 1: Create a setting to block guests for a specific Microsoft 365 group

#### Request

The following is an example of the request.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "create_groupsetting_from_groupsettings_for_guests"
}-->

```http
POST https://graph.microsoft.com/beta/groups/05aa6a98-956a-45c0-b13b-88076a23f2cd/settings
Content-type: application/json

{
    "templateId": "08d542b9-071f-4e16-94b0-74abb372e3d9",
    "values": [
        {
            "name": "AllowToAddGuests",
            "value": "false"
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-groupsetting-from-groupsettings-for-guests-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-groupsetting-from-groupsettings-for-guests-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-groupsetting-from-groupsettings-for-guests-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-groupsetting-from-groupsettings-for-guests-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-groupsetting-from-groupsettings-for-guests-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-groupsetting-from-groupsettings-for-guests-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directorySetting"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#settings/$entity",
    "id": "a06fa228-3042-4662-bd09-33e298da1afe",
    "displayName": null,
    "templateId": "08d542b9-071f-4e16-94b0-74abb372e3d9",
    "values": [
        {
            "name": "AllowToAddGuests",
            "value": "false"
        }
    ]
}
```

### Example 2: Create a directory or tenant-level setting

#### Request

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "create_directorysettings"
}-->

```msgraph-interactive
POST https://graph.microsoft.com/beta/settings
Content-type: application/json

{
    "templateId": "62375ab9-6b52-47ed-826b-58e47e0e304b",
    "values": [
        {
            "name": "GuestUsageGuidelinesUrl",
            "value": "https://privacy.contoso.com/privacystatement"
        },
        {
            "name": "EnableMSStandardBlockedWords",
            "value": "true"
        },
        {
            "name": "EnableMIPLabels",
            "value": "true"
        },
        {
            "name": "PrefixSuffixNamingRequirement",
            "value": "[Contoso-][GroupName]"
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-directorysettings-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-directorysettings-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-directorysettings-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-directorysettings-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-directorysettings-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-directorysettings-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directorySetting"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#settings/$entity",
    "id": "844d252c-4de2-43eb-a784-96df77231aae",
    "displayName": null,
    "templateId": "62375ab9-6b52-47ed-826b-58e47e0e304b",
    "values": [
        {
            "name": "GuestUsageGuidelinesUrl",
            "value": "https://privacy.contoso.com/privacystatement"
        },
        {
            "name": "EnableMSStandardBlockedWords",
            "value": "true"
        },
        {
            "name": "EnableMIPLabels",
            "value": "true"
        },
        {
            "name": "PrefixSuffixNamingRequirement",
            "value": "[Contoso-][GroupName]"
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Create directorySetting",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
