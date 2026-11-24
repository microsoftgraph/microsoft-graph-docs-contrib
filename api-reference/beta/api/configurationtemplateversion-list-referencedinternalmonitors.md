---
title: "List referencedInternalMonitors"
description: "Get the configurationMonitor objects in the same tenant that reference a template version."
author: "Anusree-stack"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "tenant-configuration-management"
doc_type: apiPageType
---

# List referencedInternalMonitors

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [configurationMonitor](../resources/configurationmonitor.md) objects in the same tenant that reference a template version.

This relationship is read-only. End users can't add or remove monitor references directly.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "configurationtemplateversion_list_referencedinternalmonitors_permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/configurationtemplateversion-list-referencedinternalmonitors-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
``` http
GET /admin/configurationManagement/configurationTemplates/{configurationTemplate-id}/versions/{version}/referencedInternalMonitors
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [configurationMonitor](../resources/configurationmonitor.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "configurationtemplateversion_list_referencedinternalmonitors_request"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/configurationManagement/configurationTemplates/11111111-2222-3333-4444-555555555555/versions/1/referencedInternalMonitors
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "@odata.type": "Collection(microsoft.graph.configurationMonitor)",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.configurationMonitor",
      "id": "22222222-3333-4444-5555-666666666666",
      "displayName": "Exchange organization monitor",
      "mode": "monitorOnly",
      "status": "active",
      "tenantId": "aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
      "templateOwnerTenantId": null
    }
  ]
}
```
