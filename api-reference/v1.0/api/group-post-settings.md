---
title: "Create settings"
description: "Create a new setting, based on the templates available in groupSettingTemplates."
ms.localizationpriority: medium
author: "yuhko-msft"
ms.reviewer: "mbhargav, khotzteam, aadgroupssg"
ms.subservice: "entra-groups"
doc_type: apiPageType
ms.date: 04/04/2024
---

# Create settings

Namespace: microsoft.graph

Create a new [group setting](../resources/groupsetting.md) based on the templates available in [groupSettingTemplates](../resources/groupsettingtemplate.md). These settings can be at the tenant-level or at the group level.

The following group setting templates are available for groups:

- `Group.Unified`: Configure settings for all or specific Microsoft 365 groups.
- `Group.Unified.Guest`: Configure guest access settings for a specific Microsoft 365 group.
- `Group.Security`: Configure settings for all or specific cloud security groups, such as enabling MIP sensitivity labels. Requires a Microsoft Entra ID P1 license.
- `Group.Security.Policies`: Configure settings for a specific cloud security group. Requires a Microsoft Entra ID P1 license.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

### Create tenant-wide settings
<!-- { "blockType": "permissions", "name": "group_post_settings" } -->
[!INCLUDE [permissions-table](../includes/permissions/group-post-settings-permissions.md)]

[!INCLUDE [rbac-group-directorysettings-all](../includes/rbac-for-apis/rbac-group-directorysettings-all.md)]

### Create group-specific settings
<!-- { "blockType": "permissions", "name": "group_post_settings_2" } -->
[!INCLUDE [permissions-table](../includes/permissions/group-post-settings-2-permissions.md)]

## HTTP request

Create a tenant-wide setting.

<!-- { "blockType": "ignored" } -->

```http
POST /groupSettings
```

Create a group-specific setting.

<!-- { "blockType": "ignored" } -->

```http
POST /groups/{id}/settings
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json          |

## Request body

In the request body, supply a JSON representation of [groupSetting](../resources/groupsetting.md) object. The display name, templateId, and description are inherited from the referenced [groupSettingTemplates](../resources/groupsettingtemplate.md) object. Only the value property can be changed from the default value.

The following properties are required when creating the [groupSetting](../resources/groupsetting.md) object.

| Parameter  | Type                                                    | Description                                                                                                                                                                          |
| :--------- | :------------------------------------------------------ | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| templateId | String                                                  | Unique identifier for the tenant-level [groupSettingTemplates](../resources/groupsettingtemplate.md) object used to create this group-level settings object. Read-only.              |
| values     | [settingValue](../resources/settingvalue.md) collection | Collection of name-value pairs corresponding to the **name** and **defaultValue** properties in the referenced [groupSettingTemplates](../resources/groupsettingtemplate.md) object. |

## Response

If successful, this method returns `201 Created` response code and [groupSetting](../resources/groupsetting.md) object in the response body.

## Examples

### Example 1: Create a new setting for all Microsoft 365 groups in the tenant

#### Request

Only the [groupSettingTemplates](../resources/groupsettingtemplate.md) object named `Group.Unified` can be applied to all Microsoft 365 groups at the tenant-level.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "create_groupsetting_from_groupsettings"
}-->

```http
POST https://graph.microsoft.com/v1.0/groupSettings
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
[!INCLUDE [sample-code](../includes/snippets/csharp/create-groupsetting-from-groupsettings-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-groupsetting-from-groupsettings-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-groupsetting-from-groupsettings-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-groupsetting-from-groupsettings-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-groupsetting-from-groupsettings-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-groupsetting-from-groupsettings-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#groupSettings/$entity",
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

The **displayName** property and other name-value pairs will be populated with the default values from the [groupSettingTemplates](../resources/groupsettingtemplate.md) object that matches the **templateId**.

### Example 2: Create a setting to block guests for a specific Microsoft 365 group

#### Request

Only the [groupSettingTemplates](../resources/groupsettingtemplate.md) object named `Group.Unified.Guest` can be applied to specific Microsoft 365 groups.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "create_groupsetting_from_groupsettings_for_guests"
}-->

```http
POST https://graph.microsoft.com/v1.0/groups/055a5d18-a3a9-4338-b9c5-de92559b7ebf/settings
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

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-groupsetting-from-groupsettings-for-guests-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

In the request body, supply a JSON representation of [groupSetting](../resources/groupsetting.md) object.

#### Response

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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#groupSettings/$entity",
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

### Example 3: Enable sensitivity labels for all cloud security groups in the tenant

Only the [groupSettingTemplates](../resources/groupsettingtemplate.md) object named `Group.Security` can be applied to all cloud security groups at the tenant-level.

> [!NOTE]
> This feature requires a Microsoft Entra ID P1 license.

#### Request

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "create_groupsetting_security_miplabels"
}-->

```http
POST https://graph.microsoft.com/v1.0/groupSettings
Content-type: application/json

{
    "templateId": "d209f6fa-3839-4d70-b83f-60b1c64d0e8f",
    "values": [
        {
            "name": "EnableMIPLabels",
            "value": "true"
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-groupsetting-security-miplabels-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-groupsetting-security-miplabels-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-groupsetting-security-miplabels-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-groupsetting-security-miplabels-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-groupsetting-security-miplabels-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-groupsetting-security-miplabels-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#groupSettings/$entity",
    "id": "3e4a9b9d-1234-5678-abcd-1234567890ab",
    "displayName": null,
    "templateId": "d209f6fa-3839-4d70-b83f-60b1c64d0e8f",
    "values": [
        {
            "name": "EnableMIPLabels",
            "value": "true"
        }
    ]
}
```

### Example 4: Block guests for a specific cloud security group

Only the [groupSettingTemplates](../resources/groupsettingtemplate.md) object named `Group.Security.Policies` can be applied to specific cloud security groups.

> [!NOTE]
> This feature requires a Microsoft Entra ID P1 license.

#### Request

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "create_groupsetting_security_policies"
}-->

```http
POST https://graph.microsoft.com/v1.0/groups/{securityGroupId}/settings
Content-type: application/json

{
    "templateId": "7e0abea2-5c20-405f-9658-bfc9a523fd49",
    "values": [
        {
            "name": "AllowToAddGuests",
            "value": "false"
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-groupsetting-security-policies-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-groupsetting-security-policies-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-groupsetting-security-policies-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-groupsetting-security-policies-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-groupsetting-security-policies-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-groupsetting-security-policies-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-groupsetting-security-policies-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#groupSettings/$entity",
    "id": "fa6df613-abcd-1234-add2-1234567890ab",
    "displayName": null,
    "templateId": "7e0abea2-5c20-405f-9658-bfc9a523fd49",
    "values": [
        {
            "name": "AllowToAddGuests",
            "value": "false"
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create groupsetting",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->
