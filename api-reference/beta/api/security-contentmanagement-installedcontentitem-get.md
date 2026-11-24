---
title: "Get installedContentItem"
description: "Read the properties of an installedContentItem object under an installedPackage in the calling tenant."
author: "AlexBrohshtut"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Get installedContentItem

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties of an [installedContentItem](../resources/security-contentmanagement-installedcontentitem.md) object under an [installedPackage](../resources/security-contentmanagement-installedpackage.md) in the calling tenant.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security_contentmanagement_installedcontentitem_get_permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-contentmanagement-installedcontentitem-get-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /security/contentManagement/installedPackages/{packageId}/contents/{contentId}
```

## Optional query parameters

This method supports `$select`. It doesn't support `$search`, `$expand`, or delta queries. For general information, see [OData query parameters](/graph/query-parameters).

## Path parameters

|Parameter|Type|Description|
|:---|:---|:---|
|packageId|String|The stable identifier (`id`) of the parent [installedPackage](../resources/security-contentmanagement-installedpackage.md).|
|contentId|String|The customer-facing identifier (`id`) of the [installedContentItem](../resources/security-contentmanagement-installedcontentitem.md).|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.contentManagement.installedContentItem](../resources/security-contentmanagement-installedcontentitem.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- { "blockType": "request", "name": "get_installedcontentitem" } -->

```http
GET https://graph.microsoft.com/beta/security/contentManagement/installedPackages/azuresentinel.azure-sentinel-solution-entraid/contents/EntraIDSuspiciousConsentGrant
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
