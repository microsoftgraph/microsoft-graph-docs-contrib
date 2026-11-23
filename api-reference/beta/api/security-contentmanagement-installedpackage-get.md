---
title: "Get installedPackage"
description: "Read the properties of an installedPackage object in the calling tenant."
author: "AlexBrohshtut"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Get installedPackage

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties of an [installedPackage](../resources/security-contentmanagement-installedpackage.md) object in the calling tenant.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security_contentmanagement_installedpackage_get_permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-contentmanagement-installedpackage-get-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /security/contentManagement/installedPackages/{packageId}
```

## Optional query parameters

This method supports `$select` (**mainTemplate** isn't available on this by-key endpoint, even with `$select`). It doesn't support `$search`, `$expand`, or delta queries. For general information, see [OData query parameters](/graph/query-parameters).

## Path parameters

|Parameter|Type|Description|
|:---|:---|:---|
|packageId|String|The stable identifier (`id`) of the [installedPackage](../resources/security-contentmanagement-installedpackage.md), matching the catalog [contentPackage](../resources/security-contentmanagement-contentpackage.md) `id`.|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.contentManagement.installedPackage](../resources/security-contentmanagement-installedpackage.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- { "blockType": "request", "name": "get_installedpackage" } -->

```http
GET https://graph.microsoft.com/beta/security/contentManagement/installedPackages/azuresentinel.azure-sentinel-solution-entraid
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.contentManagement.installedPackage",
  "isCollection": false
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/contentManagement/installedPackages/$entity",
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
  "lastModifiedDateTime": "2026-08-25T09:14:02Z"
}
```
