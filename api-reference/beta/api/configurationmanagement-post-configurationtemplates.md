---
title: "Create configurationTemplate"
description: "Create a configurationTemplate with an initial version and baseline."
author: "Anusree-stack"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "tenant-configuration-management"
doc_type: apiPageType
---

# Create configurationTemplate

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [configurationTemplate](../resources/configurationtemplate.md) with an initial version and baseline.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "configurationmanagement_post_configurationtemplates_permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/configurationmanagement-post-configurationtemplates-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
``` http
POST /admin/configurationManagement/configurationTemplates
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

Supply a JSON representation of a **configurationTemplate**. Use a deep insert to include exactly one version and its baseline. The service generates identifiers, the version number, tenant information, and audit properties. Add subsequent versions with [Create version](../api/configurationtemplate-post-versions.md).

|Property|Type|Description|
|:---|:---|:---|
|description|String|The description of the template. Optional.|
|displayName|String|The display name of the template. Required.|
|versions|[configurationTemplateVersion](../resources/configurationtemplateversion.md) collection|Exactly one initial version, with its **baseline** populated. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [configurationTemplate](../resources/configurationtemplate.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "configurationmanagement_post_configurationtemplates_request"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/configurationManagement/configurationTemplates
Content-Type: application/json

{
  "displayName": "Exchange organization template",
  "description": "Desired organization configuration for Contoso.",
  "versions": [
    {
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

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.configurationTemplate",
  "truncated": true
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.configurationTemplate",
  "id": "11111111-2222-3333-4444-555555555555",
  "displayName": "Exchange organization template",
  "description": "Desired organization configuration for Contoso.",
  "tenantId": "aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
  "createdDateTime": "2026-11-02T09:00:00Z",
  "lastModifiedDateTime": "2026-11-02T09:00:00Z"
}
```
