---
title: "List versions"
description: "Get the versions of a configurationTemplate."
author: "Anusree-stack"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "tenant-configuration-management"
doc_type: apiPageType
---

# List versions

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the versions of a [configurationTemplate](../resources/configurationtemplate.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "configurationtemplate_list_versions_permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/configurationtemplate-list-versions-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
``` http
GET /admin/configurationManagement/configurationTemplates/{configurationTemplate-id}/versions
```

## Optional query parameters

This method supports `$count`, `$expand`, `$filter`, `$orderby`, `$select`, `$skip`, and `$top`. Filtering and ordering are supported on **version** and **createdDateTime**. For example, use `$filter=version eq '1'`. `$search` isn't supported. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [configurationTemplateVersion](../resources/configurationtemplateversion.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "configurationtemplate_list_versions_request"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/configurationManagement/configurationTemplates/11111111-2222-3333-4444-555555555555/versions?$filter=version eq '1'
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "@odata.type": "Collection(microsoft.graph.configurationTemplateVersion)",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.configurationTemplateVersion",
      "version": "1",
      "templateId": "11111111-2222-3333-4444-555555555555",
      "createdDateTime": "2026-11-02T09:00:00Z"
    }
  ]
}
```
