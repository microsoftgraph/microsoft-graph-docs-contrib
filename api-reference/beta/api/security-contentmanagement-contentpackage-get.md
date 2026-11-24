---
title: "Get contentPackage"
description: "Read the properties and relationships of a contentPackage object from the security content catalog."
author: "AlexBrohshtut"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Get contentPackage

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [contentPackage](../resources/security-contentmanagement-contentpackage.md) object at its latest published catalog version.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security_contentmanagement_contentpackage_get_permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-contentmanagement-contentpackage-get-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /security/contentManagement/packages/{packageId}
```

## Optional query parameters

This method supports `$select` and `$expand` on `contents`. By-key reads include **source**, **dependencies**, and **mainTemplate** by default. It doesn't support `$search` or delta queries. For general information, see [OData query parameters](/graph/query-parameters).

## Path parameters

|Parameter|Type|Description|
|:---|:---|:---|
|packageId|String|The stable identifier (`id`) of the [contentPackage](../resources/security-contentmanagement-contentpackage.md).|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.contentManagement.contentPackage](../resources/security-contentmanagement-contentpackage.md) object in the response body.

## Examples

### Request

The following example shows a request that retrieves a catalog package and expands its contained content items.

<!-- { "blockType": "request", "name": "get_contentpackage" } -->

```http
GET https://graph.microsoft.com/beta/security/contentManagement/packages/azuresentinel.azure-sentinel-solution-entraid?$expand=contents($select=id,contentProductId,kind,displayName,version)
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.contentManagement.contentPackage",
  "isCollection": false
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/contentManagement/packages/$entity",
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
  "mainTemplate": {
    "@odata.type": "#microsoft.graph.Json",
    "$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#",
    "contentVersion": "1.0.0.0",
    "resources": []
  },
  "migratedToPackageId": null,
  "isPreview": false,
  "isFeatured": true,
  "isNew": false,
  "isDeprecated": false,
  "contents": [
    {
      "@odata.type": "#microsoft.graph.security.contentManagement.contentItem",
      "id": "EntraIDSuspiciousConsentGrant",
      "contentProductId": "azuresentinel.analyticsrule.entraidsuspiciousconsentgrant",
      "kind": "AnalyticsRule",
      "displayName": "Suspicious OAuth consent grant",
      "version": "2.0.1"
    }
  ]
}
```
