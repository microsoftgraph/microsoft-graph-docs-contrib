---
title: "List installedPackages"
description: "List the installedPackage resources installed in the calling tenant."
author: "AlexBrohshtut"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# List installedPackages

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List the [installedPackage](../resources/security-contentmanagement-installedpackage.md) resources installed in the calling tenant.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "contentmanagementroot_list_installedpackages_permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/contentmanagementroot-list-installedpackages-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /security/contentManagement/installedPackages
```

## Optional query parameters

This method supports `$select` (**mainTemplate** is hydrated only when explicitly selected; use `$select=mainTemplate` for a narrow projection or `$select=*,mainTemplate` to retain default properties), `$filter` (`id`, `contentProductId`, `version`, `installedDateTime`, and `lastModifiedDateTime`), `$orderby` (`version`, `installedDateTime`, and `lastModifiedDateTime`), `$count`, `$top` (default and maximum 100), `$skiptoken` (server-driven paging via `@odata.nextLink`), and `$expand` on `contents`. It doesn't support `$skip`, `$search`, or delta queries. For general information, see [OData query parameters](/graph/query-parameters).

The supported `$filter` operators are `eq` and `ne` for all filterable properties. The `installedDateTime` and `lastModifiedDateTime` properties also support `gt`, `ge`, `lt`, and `le`.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.security.contentManagement.installedPackage](../resources/security-contentmanagement-installedpackage.md) objects in the response body.

## Examples

### Request

The following example shows a request.

<!-- { "blockType": "request", "name": "list_installedpackages" } -->

```http
GET https://graph.microsoft.com/beta/security/contentManagement/installedPackages?$select=*,mainTemplate&$expand=contents($select=id,contentProductId,kind,version)&$orderby=installedDateTime desc&$count=true
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.contentManagement.installedPackage",
  "isCollection": true
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/contentManagement/installedPackages",
  "@odata.count": 1,
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.contentManagement.installedPackage",
      "id": "azuresentinel.azure-sentinel-solution-entraid",
      "contentProductId": "azuresentinel.azure-sentinel-solution-entraid-sl",
      "version": "3.1.0",
      "displayName": "Microsoft Entra ID",
      "description": "Detects suspicious sign-in and consent activity.",
      "descriptionHtml": "<p>Detects suspicious sign-in and consent activity.</p>",
      "icon": "https://store-images.s-microsoft.com/image/package.png",
      "publisherDisplayName": "Microsoft",
      "source": {
        "@odata.type": "#microsoft.graph.security.contentManagement.contentPackageSource",
        "kind": "marketplace",
        "displayName": "Microsoft Sentinel content hub",
        "sourceId": "azuresentinel.azure-sentinel-solution-entraid-sl"
      },
      "author": {
        "@odata.type": "#microsoft.graph.security.contentManagement.contentAuthor",
        "displayName": "Microsoft",
        "email": null,
        "link": "https://www.microsoft.com"
      },
      "support": {
        "@odata.type": "#microsoft.graph.security.contentManagement.contentSupport",
        "displayName": "Microsoft Corporation",
        "email": "support@microsoft.com",
        "tier": "microsoft",
        "link": "https://support.microsoft.com"
      },
      "dependencies": {
        "@odata.type": "#microsoft.graph.Json",
        "operator": "and",
        "criteria": [
          {
            "contentId": "EntraIDWorkbook",
            "version": "1.4.0"
          }
        ]
      },
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
      "installedDateTime": "2026-08-25T09:14:02Z",
      "lastModifiedDateTime": "2026-08-25T09:14:02Z",
      "mainTemplate": {
        "@odata.type": "#microsoft.graph.Json",
        "$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#",
        "contentVersion": "1.0.0.0",
        "resources": []
      },
      "contents": [
        {
          "@odata.type": "#microsoft.graph.security.contentManagement.installedContentItem",
          "id": "EntraIDSuspiciousConsentGrant",
          "contentProductId": "azuresentinel.analyticsrule.entraidsuspiciousconsentgrant",
          "kind": "AnalyticsRule",
          "version": "2.0.1"
        }
      ]
    }
  ]
}
```
