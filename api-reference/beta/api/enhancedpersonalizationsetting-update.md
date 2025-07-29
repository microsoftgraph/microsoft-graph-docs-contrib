---
title: "Update enhancedPersonalizationSetting"
description: "Update the properties of an enhancedPersonalizationSetting object."
author: "Ross-GH"
ms.date: 04/03/2025
ms.localizationpriority: medium
ms.subservice: "microsoft-365-copilot"
doc_type: apiPageType
---

# Update enhancedPersonalizationSetting

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [enhancedPersonalizationSetting](../resources/enhancedpersonalizationsetting.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "enhancedpersonalizationsetting_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/enhancedpersonalizationsetting-update-permissions.md)]

[!INCLUDE [rbac-peopleadmin-apis-write](../includes/rbac-for-apis/rbac-peopleadmin-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /copilot/settings/people/enhancedpersonalization
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|isEnabledInOrganization|Boolean|If true, enables the enhanced personalization control and therefore related features as defined in [control enhanced personalization privacy](/graph/control-enhanced-personalization-privacy) Required.|
|disabledForGroup|String|The ID of a Microsoft Entra group to which the value is used to disable the control for populated users. Optional.|

## Response

If successful, this method returns a `200 OK` response code and an updated [enhancedPersonalizationSetting](../resources/enhancedpersonalizationsetting.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_enhancedpersonalizationsetting"
}
-->
```http
PATCH https://graph.microsoft.com/beta/copilot/settings/people/enhancedpersonalization
Content-Type: application/json

{
  "isEnabledInOrganization": true,
  "disabledForGroup": "edbfe4fb-ec70-4300-928f-dbb2ae86c981"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-enhancedpersonalizationsetting-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-enhancedpersonalizationsetting-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-enhancedpersonalizationsetting-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-enhancedpersonalizationsetting-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-enhancedpersonalizationsetting-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-enhancedpersonalizationsetting-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.enhancedPersonalizationSetting",
  "name": "update_enhancedpersonalizationsetting"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "isEnabledInOrganization": true,
  "disabledForGroup": "edbfe4fb-ec70-4300-928f-dbb2ae86c981"
}
```
