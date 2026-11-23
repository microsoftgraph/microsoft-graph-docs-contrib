---
title: "Update installedContentItem"
description: "Install a catalog content item or update an existing installedContentItem under an installed package by using caller-keyed PATCH upsert."
author: "AlexBrohshtut"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Update installedContentItem

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Install a single [contentItem](../resources/security-contentmanagement-contentitem.md) from a package into the calling tenant or update an existing [installedContentItem](../resources/security-contentmanagement-installedcontentitem.md) under its parent [installedPackage](../resources/security-contentmanagement-installedpackage.md).

This operation uses caller-keyed upsert semantics: if the content item identified by `({packageId}, {contentId})` isn't yet installed in the tenant, the service creates the installation and returns `200 OK`; if the content item is already installed, the service updates it and returns `200 OK`. Conditional write headers (`ETag` and `If-Match`) aren't supported.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security_contentmanagement_installedcontentitem_update_permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-contentmanagement-installedcontentitem-update-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /security/contentManagement/installedPackages/{packageId}/contents/{contentId}
```

## Path parameters

|Parameter|Type|Description|
|:---|:---|:---|
|packageId|String|The stable identifier (`id`) of the parent [installedPackage](../resources/security-contentmanagement-installedpackage.md).|
|contentId|String|The customer-facing identifier (`id`) of the [installedContentItem](../resources/security-contentmanagement-installedcontentitem.md) to install or update.|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [installedContentItem](../resources/security-contentmanagement-installedcontentitem.md) object containing version assertions. When supplied, **version** and **packageVersion** must match the resolved catalog content item and the tenant's installed package state; omitting them lets the service resolve the applicable versions. All other properties on [installedContentItem](../resources/security-contentmanagement-installedcontentitem.md) are read-only and must not be supplied.

|Property|Type|Description|
|:---|:---|:---|
|packageVersion|String|The owning package version assertion for this content item installation.|
|version|String|The content item version assertion. When supplied, it must match the resolved catalog content item.|

## Response

If successful, this method returns a `200 OK` response code and an [microsoft.graph.security.contentManagement.installedContentItem](../resources/security-contentmanagement-installedcontentitem.md) object in the response body whether the installation was created or updated.

## Examples

### Request

The following example shows a request to install or update a content item under an installed package.

<!-- { "blockType": "request", "name": "update_installedcontentitem" } -->

```http
PATCH https://graph.microsoft.com/beta/security/contentManagement/installedPackages/azuresentinel.azure-sentinel-solution-entraid/contents/EntraIDSuspiciousConsentGrant
Content-Type: application/json

{
  "version": "2.0.1",
  "packageVersion": "3.1.0"
}
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.contentManagement.installedContentItem",
  "isCollection": false
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/contentManagement/installedPackages/azuresentinel.azure-sentinel-solution-entraid/contents/$entity",
  "@odata.type": "#microsoft.graph.security.contentManagement.installedContentItem",
  "id": "EntraIDSuspiciousConsentGrant",
  "contentProductId": "azuresentinel.analyticsrule.entraidsuspiciousconsentgrant",
  "kind": "AnalyticsRule",
  "version": "2.0.1",
  "packageId": "azuresentinel.azure-sentinel-solution-entraid-sl",
  "packageVersion": "3.1.0",
  "installedDateTime": "2026-08-25T09:21:47Z",
  "lastModifiedDateTime": "2026-08-25T09:21:47Z"
}
```
