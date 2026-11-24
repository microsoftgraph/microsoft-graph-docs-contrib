---
title: "List packages"
description: "List the contentPackage resources published in the security content catalog."
author: "AlexBrohshtut"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# List packages

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List the [contentPackage](../resources/security-contentmanagement-contentpackage.md) resources published in the security content catalog, one entry per package at its latest catalog version.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "contentmanagementroot_list_packages_permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/contentmanagementroot-list-packages-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /security/contentManagement/packages
```

## Optional query parameters

This method supports `$select` (**source**, **dependencies**, and **mainTemplate** aren't available on collection reads, even with `$select`), `$filter` (`id`, `contentProductId`, `kind`, `version`, `displayName`, `publisherDisplayName`, `providers`, `categories/domains`, `categories/verticals`, `firstPublishDateTime`, `lastPublishDateTime`, `isDeprecated`, `support/tier`, `support/displayName`, `author/displayName`, `isFeatured`, `isPreview`, and `isNew`), `$orderby` (`displayName`, `version`, `firstPublishDateTime`, and `lastPublishDateTime`), `$count`, `$top` (default and maximum 100), `$skiptoken` (server-driven paging via `@odata.nextLink` for non-search requests), `$search` (free-text search returning up to 100 results without `@odata.nextLink`), and `$expand` on `contents`. It doesn't support `$skip` or delta queries. For general information, see [OData query parameters](/graph/query-parameters).

The supported `$filter` operators are `eq` and `ne` for all filterable scalar properties. The `firstPublishDateTime` and `lastPublishDateTime` properties also support `gt`, `ge`, `lt`, and `le`. Use the `any` lambda operator for `providers`, `categories/domains`, and `categories/verticals`.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.security.contentManagement.contentPackage](../resources/security-contentmanagement-contentpackage.md) objects in the response body.

## Examples

### Request

The following example shows a request.

<!-- { "blockType": "request", "name": "list_contentpackages" } -->

```http
GET https://graph.microsoft.com/beta/security/contentManagement/packages?$search=phishing&$filter=support/tier eq 'microsoft'&$orderby=lastPublishDateTime desc&$top=2&$count=true
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.contentManagement.contentPackage",
  "isCollection": true
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/contentManagement/packages",
  "@odata.count": 17,
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.contentManagement.contentPackage",
      "id": "azuresentinel.azure-sentinel-solution-entraid",
      "contentProductId": "azuresentinel.azure-sentinel-solution-entraid-sl",
      "kind": "Solution",
      "version": "3.1.0",
      "displayName": "Microsoft Entra ID",
      "description": "Detects suspicious sign-in and consent activity.",
      "descriptionHtml": "<p>Detects suspicious sign-in and consent activity.</p>",
      "icon": "https://store-images.s-microsoft.com/image/package.png",
      "publisherDisplayName": "Microsoft",
      "providers": [
        "Microsoft Entra ID"
      ],
      "categories": {
        "@odata.type": "#microsoft.graph.security.contentManagement.contentCategories",
        "domains": [
          "Identity"
        ],
        "verticals": []
      },
      "firstPublishDateTime": "2023-04-11T00:00:00Z",
      "lastPublishDateTime": "2026-07-30T00:00:00Z",
      "isDeprecated": false,
      "migratedToPackageId": null,
      "support": {
        "@odata.type": "#microsoft.graph.security.contentManagement.contentSupport",
        "displayName": "Microsoft Corporation",
        "email": "support@microsoft.com",
        "tier": "microsoft",
        "link": "https://support.microsoft.com"
      },
      "author": {
        "@odata.type": "#microsoft.graph.security.contentManagement.contentAuthor",
        "displayName": "Microsoft",
        "email": null,
        "link": "https://www.microsoft.com"
      },
      "isFeatured": true,
      "isPreview": false,
      "isNew": false
    }
  ]
}
```
