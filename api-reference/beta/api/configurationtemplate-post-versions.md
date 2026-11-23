---
title: "Create configurationTemplateVersion"
description: "Create a new configurationTemplateVersion with a desired-state baseline."
author: "Anusree-stack"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "tenant-configuration-management"
doc_type: apiPageType
---

# Create configurationTemplateVersion

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [configurationTemplateVersion](../resources/configurationtemplateversion.md) with a desired-state baseline.

A template can contain at most three versions. Creating a version doesn't change the version referenced by existing monitors.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "configurationtemplate_post_versions_permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/configurationtemplate-post-versions-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
``` http
POST /admin/configurationManagement/configurationTemplates/{configurationTemplate-id}/versions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

Supply the **baseline** relationship inline. The service generates **version**, **templateId**, **createdBy**, and **createdDateTime**; don't supply these properties.

|Property|Type|Description|
|:---|:---|:---|
|baseline|[configurationBaseline](../resources/configurationbaseline.md)|The desired-state baseline for the version. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [configurationTemplateVersion](../resources/configurationtemplateversion.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "configurationtemplate_post_versions_request"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/configurationManagement/configurationTemplates/11111111-2222-3333-4444-555555555555/versions
Content-Type: application/json

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
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.configurationTemplateVersion",
  "truncated": true
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.configurationTemplateVersion",
  "version": "1",
  "templateId": "11111111-2222-3333-4444-555555555555",
  "createdDateTime": "2026-11-02T09:00:00Z"
}
```
