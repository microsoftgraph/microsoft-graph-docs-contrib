---
title: "Get configurationBaseline"
description: "Read the properties and relationships of a configurationBaseline object that is attached to a specific monitor."
author: "swatyario"
ms.date: 01/19/2026
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
doc_type: apiPageType
---

# Get configurationBaseline

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [configurationBaseline](../resources/configurationbaseline.md) object that is attached to a specific monitor.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "configurationbaseline-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/configurationbaseline-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/configurationManagement/configurationMonitors/{configurationMonitorId}/baseline
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [configurationBaseline](../resources/configurationbaseline.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_configurationbaseline"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/configurationManagement/configurationMonitors/b86049ce-0180-404e-803a-5616d49290d7/baseline
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.configurationBaseline"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/configurationManagement/configurationMonitors('f1b46220-74af-4347-9ac7-89fe17d57bd7')/baseline/$entity",
  "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET admin/configurationManagement/configurationMonitors('<guid>')/baseline?$select=description,displayName",
  "id": "5b15be20-897f-4b79-85a6-97871c708f6f",
  "displayName": "Demo Baseline",
  "description": "This is a baseline with SharedMailbox, AcceptedDomain and MailContact",
  "parameters": [],
  "resources": [
    {
      "displayName": "TestSharedMailbox Resource",
      "resourceType": "microsoft.exchange.sharedmailbox",
      "properties": {
        "DisplayName": "TestSharedMailbox",
        "Alias": "testSharedMailbox",
        "Identity": "TestSharedMailbox",
        "Ensure": "Present",
        "PrimarySmtpAddress": "testSharedMailbox@contoso.onmicrosoft.com",
        "EmailAddresses": [
          "abc@contoso.onmicrosoft.com"
        ]
      }
    },
    {
      "displayName": "Accepted Domain",
      "resourceType": "microsoft.exchange.accepteddomain",
      "properties": {
        "Identity": "contoso.onmicrosoft.com",
        "DomainType": "InternalRelay",
        "Ensure": "Present"
      }
    },
    {
      "displayName": "Mail Contact Resource",
      "resourceType": "microsoft.exchange.mailcontact",
      "properties": {
        "Name": "Chris",
        "DisplayName": "Chris",
        "ExternalEmailAddress": "SMTP:chris@ach.com",
        "Alias": "Chrisa",
        "Ensure": "Present"
      }
    }
  ]
}
```
