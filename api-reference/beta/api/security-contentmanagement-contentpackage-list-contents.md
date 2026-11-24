---
title: "List contents"
description: "List the contentItem resources shipped by a published contentPackage in the security content catalog."
author: "AlexBrohshtut"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# List contents

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List the [contentItem](../resources/security-contentmanagement-contentitem.md) resources shipped by the latest catalog version of a [contentPackage](../resources/security-contentmanagement-contentpackage.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security_contentmanagement_contentpackage_list_contents_permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-contentmanagement-contentpackage-list-contents-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /security/contentManagement/packages/{packageId}/contents
```

## Optional query parameters

This method supports `$select` (**dependencies** and **mainTemplate** aren't available on collection reads, even with `$select`), `$filter` (`id`, `contentProductId`, `kind`, `version`, `displayName`, `packageId`, `packageVersion`, and `isDeprecated`), `$orderby` (`displayName` and `version`), `$count`, `$top` (default and maximum 100), `$skiptoken` (server-driven paging via `@odata.nextLink` for non-search requests), and `$search` (free-text search returning up to 100 results without `@odata.nextLink`). It doesn't support `$skip`, `$expand`, or delta queries. For general information, see [OData query parameters](/graph/query-parameters).

The supported `$filter` operators are `eq` and `ne` for all filterable properties.

## Path parameters

|Parameter|Type|Description|
|:---|:---|:---|
|packageId|String|The stable identifier (`id`) of the parent [contentPackage](../resources/security-contentmanagement-contentpackage.md).|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.security.contentManagement.contentItem](../resources/security-contentmanagement-contentitem.md) objects in the response body.

## Examples

### Request

The following example shows a request.

<!-- { "blockType": "request", "name": "list_package_contents" } -->

```http
GET https://graph.microsoft.com/beta/security/contentManagement/packages/azuresentinel.azure-sentinel-solution-entraid/contents?$search=consent&$select=id,contentProductId,packageId,kind,displayName,version,description&$top=100
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.contentManagement.contentItem",
  "isCollection": true
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/contentManagement/packages/azuresentinel.azure-sentinel-solution-entraid/contents",
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.contentManagement.contentItem",
      "id": "EntraIDSuspiciousConsentGrant",
      "contentProductId": "azuresentinel.analyticsrule.entraidsuspiciousconsentgrant",
      "packageId": "azuresentinel.azure-sentinel-solution-entraid-sl",
      "kind": "AnalyticsRule",
      "displayName": "Suspicious OAuth consent grant",
      "version": "2.0.1",
      "description": "Detects suspicious OAuth consent activity."
    }
  ]
}
```
