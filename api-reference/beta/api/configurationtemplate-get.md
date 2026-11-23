---
title: "Get configurationTemplate"
description: "Get the properties and relationships of a configurationTemplate."
author: "Anusree-stack"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "tenant-configuration-management"
doc_type: apiPageType
---

# Get configurationTemplate

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the properties and relationships of a [configurationTemplate](../resources/configurationtemplate.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "configurationtemplate_get_permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/configurationtemplate-get-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
``` http
GET /admin/configurationManagement/configurationTemplates/{configurationTemplate-id}
```

## Optional query parameters

This method supports `$select` and `$expand`. Use `$expand=versions($expand=baseline)` to include each version and its baseline. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [configurationTemplate](../resources/configurationtemplate.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "configurationtemplate_get_request"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/configurationManagement/configurationTemplates/11111111-2222-3333-4444-555555555555?$expand=versions($expand=baseline)
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.configurationTemplate",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.configurationTemplate",
  "id": "11111111-2222-3333-4444-555555555555",
  "displayName": "Exchange organization template",
  "description": "Desired organization configuration for Contoso.",
  "tenantId": "aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
  "createdDateTime": "2026-11-02T09:00:00Z",
  "lastModifiedDateTime": "2026-11-02T09:00:00Z",
  "versions": [
    {
      "@odata.type": "#microsoft.graph.configurationTemplateVersion",
      "version": "1",
      "templateId": "11111111-2222-3333-4444-555555555555",
      "createdDateTime": "2026-11-02T09:00:00Z",
      "baseline": {
        "displayName": "Exchange organization baseline",
        "resources": [
          {
            "displayName": "Organization configuration",
            "resourceType": "microsoft.exchange.organizationconfig",
            "properties": {
              "IsSingleInstance": "Yes",
              "SmtpActionableMessagesEnabled": true
            }
          }
        ]
      }
    }
  ]
}
```
