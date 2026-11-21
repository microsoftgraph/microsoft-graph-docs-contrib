---
title: "Get configurationTemplateVersion"
description: "Get the properties and relationships of a configurationTemplateVersion."
author: "Anusree-stack"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "tenant-configuration-management"
doc_type: apiPageType
---

# Get configurationTemplateVersion

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the properties and relationships of a [configurationTemplateVersion](../resources/configurationtemplateversion.md).

Use `latest` as the version key to retrieve the highest-numbered version.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "configurationtemplateversion_get_permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/configurationtemplateversion-get-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
``` http
GET /admin/configurationManagement/configurationTemplates/{configurationTemplate-id}/versions/{version}
```

## Optional query parameters

This method supports `$select` and `$expand`. Expand **baseline**, **referencedInternalMonitors**, or **referencedExternalMonitors**. For external monitor identifiers, use `$expand=referencedExternalMonitors($expand=monitors($select=id))`; selecting other nested monitor properties isn't supported. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [configurationTemplateVersion](../resources/configurationtemplateversion.md) object in the response body.

## Examples

### Example 1: Get a version with its baseline

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "configurationtemplateversion_get_request"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/configurationManagement/configurationTemplates/11111111-2222-3333-4444-555555555555/versions/1?$expand=baseline
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.configurationTemplateVersion",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

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
```

### Example 2: Expand external monitor references

Only the monitor identifier is available in this nested expansion. Use `$select=id`; full monitor objects aren't retrieved from the external tenant.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_version_external_references_request"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/configurationManagement/configurationTemplates/11111111-2222-3333-4444-555555555555/versions/1?$expand=referencedExternalMonitors($expand=monitors($select=id))
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.configurationTemplateVersion",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.configurationTemplateVersion",
  "version": "1",
  "templateId": "11111111-2222-3333-4444-555555555555",
  "createdDateTime": "2026-11-02T09:00:00Z",
  "referencedExternalMonitors": [
    {
      "tenantId": "aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
      "monitors": [
        {
          "id": "22222222-3333-4444-5555-666666666666"
        }
      ]
    }
  ]
}
```
