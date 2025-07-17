---
title: "Get directorySetting"
description: "Retrieve the properties of a specific directory setting object."
author: "yuhko-msft"
ms.reviewer: "mbhargav, khotzteam, aadgroupssg"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
ms.date: 04/04/2024
---

# Get directorySetting

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties of a specific [directory setting](../resources/directorysetting.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
The following tables show the least privileged permission or permissions required to call this API on each supported resource type. Follow [best practices](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions) to request least privileged permissions. For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


### List tenant-wide settings

<!-- { "blockType": "permissions", "name": "directorysetting_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/directorysetting-get-permissions.md)]

[!INCLUDE [rbac-group-directorysettings-all](../includes/rbac-for-apis/rbac-group-directorysettings-all.md)]

### List group-specific settings

<!-- { "blockType": "permissions", "name": "directorysetting_get_2" } -->
[!INCLUDE [permissions-table](../includes/permissions/directorysetting-get-2-permissions.md)]


## HTTP request

<!-- { "blockType": "ignored" } -->

Get a tenant-wide setting.

```http
GET /settings/{directorySettingId}
```

<!-- { "blockType": "ignored" } -->
Get a group-specific setting.
```http
GET /groups/{groupId}/settings/{directorySettingId}
```

## Optional query parameters
This method supports the `$select` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers
| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and [directorySetting](../resources/directorysetting.md) object in the response body.

## Example
### Request
The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_directorysetting"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/settings/f0b2d6f5-097d-4177-91af-a24e530b53cc
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-directorysetting-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-directorysetting-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-directorysetting-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-directorysetting-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-directorysetting-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-directorysetting-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-directorysetting-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-directorysetting-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directorySetting"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#settings/$entity",
  "id": "f0b2d6f5-097d-4177-91af-a24e530b53cc",
  "displayName": "Group.Unified",
  "templateId": "62375ab9-6b52-47ed-826b-58e47e0e304b",
  "values": [
    {
      "name": "NewUnifiedGroupWritebackDefault",
      "value": "false"
    },
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
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get directorySetting",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
