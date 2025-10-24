---
title: "Update profileSource"
description: "Update the properties of a profileSource object."
author: "rwaithera"
ms.date: 04/30/2025
ms.localizationpriority: medium
ms.subservice: "people"
doc_type: apiPageType
---

# Update profileSource

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [profileSource](../resources/profilesource.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "profilesource-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/profilesource-update-permissions.md)]

[!INCLUDE [rbac-peopleadmin-apis-write](../includes/rbac-for-apis/rbac-peopleadmin-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /admin/people/profileSources(sourceId='{sourceId}')
```

## Function parameters

In the request URL, provide the following parameter with a valid value.

| Parameter | Type   | Description                              |
| :-------- | :----- | :--------------------------------------- |
|sourceId|String|Profile source identifier used as an [alternate key](https://github.com/microsoft/api-guidelines/blob/vNext/graph/patterns/alternate-key.md). Required.|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

> **Note:** To avoid encoding issues that malform the payload, use `Content-Type: application/json; charset=utf-8`.

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Name of the profile source intended to inform users about the profile source name.|
|kind|String|Type of the profile source.|
|localizations|[profileSourceLocalization](../resources/profilesourcelocalization.md) collection|Alternative localized labels specified by an administrator.|
|sourceId|String|Profile source identifier used as an alternate key.|
|webUrl|String|Web URL of the profile source that directs users to the page view of profile data.|

## Response

If successful, this method returns a `200 OK` response code and an updated [profileSource](../resources/profilesource.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_profilesource"
}
-->
```http
PATCH https://graph.microsoft.com/beta/admin/people/profileSources(sourceId='bamboohr1')
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.profileSource",
  "sourceId": "bamboohr1",
  "kind": "BambooHR",
  "displayName": "BambooHR Updated",
  "webUrl": "https://bamboohr.contoso.com/login",
  "localizations": [
    {
      "displayName": "HR-Platform",
      "webUrl": "http://bamboohr.contoso.com/en-us/login",
      "languageTag": "en-us"
    },
    {
      "displayName": "HR-Plattform",
      "webUrl": "http://bamboohr.contoso.com/de/login",
      "languageTag": "de"
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-profilesource-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-profilesource-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-profilesource-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-profilesource-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-profilesource-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-profilesource-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.profileSource"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.profileSource",
  "id": "27f1af7b-b166-4f5b-b994-ae135a581547",
  "sourceId": "bamboohr1",
  "kind": "BambooHR",
  "displayName": "BambooHR Updated",
  "webUrl": "https://bamboohr.contoso.com/login",
  "localizations": [
    {
      "displayName": "HR-Platform",
      "webUrl": "http://bamboohr.contoso.com/en-us/login",
      "languageTag": "en-us"
    },
    {
      "displayName": "HR-Plattform",
      "webUrl": "http://bamboohr.contoso.com/de/login",
      "languageTag": "de"
    }
  ]
}
```
