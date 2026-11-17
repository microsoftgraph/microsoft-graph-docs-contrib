---
title: "Get configurationMonitor"
description: "Get the properties and relationships of a configurationMonitor object."
author: "swatyario"
ms.date: 01/19/2026
ms.localizationpriority: medium
ms.subservice: "tenant-configuration-management"
doc_type: apiPageType
---

# Get configurationMonitor

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the properties and relationships of a [configurationMonitor](../resources/configurationmonitor.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "configurationmonitor_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/configurationmonitor-get-permissions.md)]

## HTTP request

To get the details of any particular monitor:

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/configurationManagement/configurationMonitors/{configurationMonitorId}
```

>**Note:** Replace `configurationMonitorId` with the monitor ID for which you want to get the details.

## Optional query parameters

This method supports the `$select` and `$expand` OData query parameters. Use `$expand=template` to retrieve a referenced template version in the same tenant. For a template owned by another tenant, use `$expand=template($select=version,templateId)`; full cross-tenant template expansion isn't supported. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [configurationMonitor](../resources/configurationmonitor.md) object in the response body.

## Examples

### Example 1: Get a monitor

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_configurationmonitor"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/configurationManagement/configurationMonitors/b166c9cb-db29-438b-95fb-247da1dc72c3
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-configurationmonitor-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-configurationmonitor-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-configurationmonitor-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-configurationmonitor-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-configurationmonitor-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-configurationmonitor-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-configurationmonitor-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.configurationMonitor"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "fe082480-bdc2-a90c-25f8-4c7fb2fe2f81",
  "inactivationReason": null,
  "displayName": "Demo Monitor",
  "description": "This is a demo monitor.",
  "tenantId": "aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
  "status": "active",
  "monitorRunFrequencyInHours": 6,
  "mode": "monitorOnly",
  "createdBy": {
    "user": {
      "id": "823da47e-fc25-48d8-8b5a-6186c760f0df",
      "displayName": "System Administrator"
    }
  },
  "createdDateTime": "2024-12-12T09:52:18.7982733Z",
  "lastModifiedBy": {
    "user": {
      "id": "823da47e-fc25-48d8-8b5a-6186c760f0df",
      "displayName": "System Administrator"
    }
  },
  "lastModifiedDateTime": "2024-12-12T09:52:18.7982733Z",
  "parameters": {
    "FQDN": "contoso.onmicrosoft.com",
    "TenantId": "aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee"
  },
  "runningOnBehalfOf": {
    "user": {
      "id": "44444444-5555-6666-7777-888888888888",
      "displayName": "Contoso Administrator"
    }
  },
  "templateOwnerTenantId": null
}
```

### Example 2: Expand a same-tenant template reference

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_monitor_expand_template_request"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/configurationManagement/configurationMonitors/22222222-3333-4444-5555-666666666666?$expand=template
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.configurationMonitor",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.configurationMonitor",
  "id": "22222222-3333-4444-5555-666666666666",
  "displayName": "Monitor from Exchange template",
  "mode": "monitorOnly",
  "status": "active",
  "tenantId": "aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
  "templateOwnerTenantId": "aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
  "template": {
    "@odata.type": "#microsoft.graph.configurationTemplateVersion",
    "version": "1",
    "templateId": "11111111-2222-3333-4444-555555555555",
    "createdDateTime": "2026-11-02T09:00:00Z"
  }
}
```
