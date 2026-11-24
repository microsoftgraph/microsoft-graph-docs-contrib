---
title: "Get contentItem"
description: "Read the properties and relationships of a contentItem object within a published contentPackage."
author: "AlexBrohshtut"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Get contentItem

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [contentItem](../resources/security-contentmanagement-contentitem.md) object shipped by a published [contentPackage](../resources/security-contentmanagement-contentpackage.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security_contentmanagement_contentitem_get_permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-contentmanagement-contentitem-get-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /security/contentManagement/packages/{packageId}/contents/{contentId}
```

## Optional query parameters

This method supports `$select`. By-key reads include **dependencies** and **mainTemplate** by default. It doesn't support `$search`, `$expand`, or delta queries. For general information, see [OData query parameters](/graph/query-parameters).

## Path parameters

|Parameter|Type|Description|
|:---|:---|:---|
|packageId|String|The stable identifier (`id`) of the parent [contentPackage](../resources/security-contentmanagement-contentpackage.md).|
|contentId|String|The customer-facing identifier (`id`) of the [contentItem](../resources/security-contentmanagement-contentitem.md).|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.contentManagement.contentItem](../resources/security-contentmanagement-contentitem.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- { "blockType": "request", "name": "get_contentitem" } -->

```http
GET https://graph.microsoft.com/beta/security/contentManagement/packages/azuresentinel.azure-sentinel-solution-entraid/contents/EntraIDSuspiciousConsentGrant
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.contentManagement.contentItem",
  "isCollection": false
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/contentManagement/packages/azuresentinel.azure-sentinel-solution-entraid/contents/$entity",
  "@odata.type": "#microsoft.graph.security.contentManagement.contentItem",
  "id": "EntraIDSuspiciousConsentGrant",
  "contentProductId": "azuresentinel.analyticsrule.entraidsuspiciousconsentgrant",
  "packageId": "azuresentinel.azure-sentinel-solution-entraid-sl",
  "kind": "AnalyticsRule",
  "displayName": "Suspicious OAuth consent grant",
  "version": "2.0.1",
  "packageVersion": "3.1.0",
  "isDeprecated": false,
  "dependencies": {
    "@odata.type": "#microsoft.graph.Json",
    "operator": "and",
    "criteria": []
  },
  "mainTemplate": {
    "@odata.type": "#microsoft.graph.Json",
    "kind": "Scheduled",
    "query": "AuditLogs | where OperationName == 'Consent to application'"
  }
}
```
