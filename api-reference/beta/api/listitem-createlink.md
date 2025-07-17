---
title: "listItem: createLink"
description: "Create a link to share a listItem"
author: "learafa"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
ms.date: 04/04/2024
---

# listItem: createLink

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a sharing link for a [listItem](../resources/listitem.md).

The **createLink** action creates a new sharing link if the specified link type doesn't already exist for the calling application.
If a sharing link of the specified type already exists for the app, this action returns the existing sharing link.

**listItem** resources inherit sharing permissions from the [list](../resources/list.md) the item resides in.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "listitem_createlink" } -->
[!INCLUDE [permissions-table](../includes/permissions/listitem-createlink-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored",
  "sampleKeys": ["contoso.sharepoint.com,2288913C-B09C-46C4-BD1D-AEBB3A6E08EB,133A857A-DC2E-4A41-BCF7-D2B9BBC016AF", "A90E03FB-8446-4E0F-82E7-810FA7595A66", "3"]
}
-->
``` http
POST /sites/{siteId}/lists/{listId}/items/{itemId}/createLink
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, provide a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|   Property             |  Type  |           Description                        |
| :----------------------| :----- | :--------------------------------------------|
|type|String|The type of sharing link to create. Optional. |
|scope|String|The scope of link to create. Either `anonymous`, `organization` or `users`. Optional. |
|expirationDateTime|DateTimeOffset|A string with format of yyyy-MM-ddTHH:mm:ssZ of DateTime indicates the expiration time of the permission. Optional. |
|password|String|The password of the sharing link that is set by the creator. Optional. |
|recipients|[driveRecipient](../resources/driverecipient.md) collection|A collection of recipients who will receive access to the sharing link. Optional. |
| retainInheritedPermissions |  Boolean          | Optional. If `true` (default), any existing inherited permissions are retained on the shared item when sharing this item for the first time. If `false`, all existing permissions are removed when sharing for the first time.  |
|sendNotification|Boolean|If `true`, this method sends a [sharing link](../resources/permission.md#sharing-links) in an email to users specified in `recipients`. Applicable to OneDrive for Business and SharePoint. The default value is `false`. Optional.|

### Link types

The following values are allowed for the **type** parameter.

| Type value | Description                                                                                  |
|:-----------|:---------------------------------------------------------------------------------------------|
| view           | Creates a read-only link to the item.                                                                        |
| review         | Creates a review link to the item. This option is only available for files in OneDrive for Business and SharePoint.                   |
| edit           | Creates a read-write link to the item.                                                                       |
| embed          | Creates an embeddable link to the item.                                                                      |
| blocksDownload | Creates a read-only link that blocks download to the item. This option is only available for files in OneDrive for Business and SharePoint.  |
| createOnly     | Creates an upload-only link to the item. This option is only available for folders in OneDrive for Business and SharePoint.             |
| addressBar     | Creates the default link that is shown in the browser address bars for newly created files. Only available in OneDrive for Business and SharePoint. The organization admin configures whether this link type is supported, and what features are supported by this link type. |
| adminDefault   | Creates the default link to the item as determined by the administrator of the organization. Only available in OneDrive for Business and SharePoint. The policy is enforced for the organization by the admin |

### Scope types

The following values are allowed for the **scope** parameter.

| Value          | Description
|:---------------|:------------------------------------------------------------
| anonymous    | Anyone with the link has access, without needing to sign in. This may include people outside of your organization. Anonymous link support may be disabled by an administrator.
| organization | Anyone signed into your organization (tenant) can use the link to get access. Only available in OneDrive for Business and SharePoint.
| users        | Specific people in the recipients collection can use the link to get access. Only available in OneDrive for Business and SharePoint.

## Response

If successful, this method returns a single [permission](../resources/permission.md) resource in the response body that represents the requested sharing permissions.

The response is `201 Created` if a new sharing link is created for the listItem or `200 OK` if an existing link is returned.

## Examples

### Example 1: Create an anonymous sharing link
The following example requests a sharing link to be created for the listItem specified by {itemId} in the list specified {listId}.
The sharing link is configured to be read-only and usable by anyone with the link.
For OneDrive for Business and SharePoint users, use the `sendNotification` parameter to create a sharing link. The `sharingLink` is then sent to recipients via email.
All existing permissions are removed when sharing for the first time if `retainInheritedPermissions` is false.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "listItem_createlink_for_itemID_in_specific_list"
}-->

```http
POST https://graph.microsoft.com/beta/sites/{siteId}/lists/{listId}/items/{itemId}/createLink
Content-Type: application/json

{
  "type": "view",
  "scope": "anonymous",
  "password": "String",
  "recipients": [
    {
      "@odata.type": "microsoft.graph.driveRecipient"
    }
  ],
  "sendNotification": true,
  "retainInheritedPermissions": false
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/listitem-createlink-for-itemid-in-specific-list-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/listitem-createlink-for-itemid-in-specific-list-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/listitem-createlink-for-itemid-in-specific-list-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/listitem-createlink-for-itemid-in-specific-list-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/listitem-createlink-for-itemid-in-specific-list-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/listitem-createlink-for-itemid-in-specific-list-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/listitem-createlink-for-itemid-in-specific-list-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/listitem-createlink-for-itemid-in-specific-list-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permission"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "123ABC",
  "roles": ["write"],
  "link": {
    "type": "view",
    "scope": "anonymous",
    "webUrl": "https://1drv.ms/A6913278E564460AA616C71B28AD6EB6",
    "application": {
      "id": "1234",
      "displayName": "Sample Application"
    },
  },
  "hasPassword": true
}
```

### Example 2: Creating company sharable links

OneDrive for Business and SharePoint support company sharable links.
These links are similar to anonymous links, except they only work for members of the owning organization.
To create a company sharable link, use the **scope** parameter with a value of `organization`.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "listItem_createlink_create_company_shareable_links"
}-->

```http
POST https://graph.microsoft.com/beta/sites/{siteId}/lists/{listId}/items/{itemId}/createLink
Content-Type: application/json

{
  "type": "edit",
  "scope": "organization"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/listitem-createlink-create-company-shareable-links-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/listitem-createlink-create-company-shareable-links-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/listitem-createlink-create-company-shareable-links-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/listitem-createlink-create-company-shareable-links-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/listitem-createlink-create-company-shareable-links-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/listitem-createlink-create-company-shareable-links-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/listitem-createlink-create-company-shareable-links-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/listitem-createlink-create-company-shareable-links-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.permission" } -->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "123ABC",
  "roles": ["write"],
  "link": {
    "type": "edit",
    "scope": "organization",
    "webUrl": "https://contoso-my.sharepoint.com/personal/ellen_contoso_com/...",
    "application": {
      "id": "1234",
      "displayName": "Sample Application"
    },
  }
}
```

### Example 3: Creating embeddable links

When you use the `embed` link type, the webUrl returned can be embedded in an `<iframe>` HTML element.
When an embed link is created, the `webHtml` property contains the HTML code for an `<iframe>` to host the content.

>**Note:** Embed links are only supported for OneDrive personal.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "listItem_createlink_3"
}-->

```http
POST https://graph.microsoft.com/beta/sites/{siteId}/lists/{listId}/items/{itemId}/createLink
Content-Type: application/json

{
  "type": "embed"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/listitem-createlink-3-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/listitem-createlink-3-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/listitem-createlink-3-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/listitem-createlink-3-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/listitem-createlink-3-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/listitem-createlink-3-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/listitem-createlink-3-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/listitem-createlink-3-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.permission" } -->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "123ABC",
  "roles": ["read"],
  "link": {
    "type": "embed",
    "webHtml": "<IFRAME src=\"https://onedrive.live.com/...\"></IFRAME>",
    "webUrl": "https://onedive.live.com/...",
    "application": {
      "id": "1234",
      "displayName": "Sample Application"
    },
  }
}
```

## Remarks

* To create a link based on the organization's default policy and the caller's permissions on the listItem, omit the scope and type parameters
* Links created using this action don't expire unless a default expiration policy is enforced for the organization.
* Links are visible in the sharing permissions for the listItem and can be removed by an owner of the listItem.
* Links always point to the current version of a listItem unless the listItem is checked out (SharePoint only).

<!--
{
  "type": "#page.annotation",
  "description": "Create a new sharing link for an listItem.",
  "keywords": "create,sharing,sharing link",
  "section": "documentation",
  "tocPath": "Sharing/Create link",
  "suppressions": [
  ]
}
-->
