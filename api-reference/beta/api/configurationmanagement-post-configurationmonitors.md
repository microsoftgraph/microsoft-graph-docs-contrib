---
title: "Create configurationMonitor"
description: "Create a new configurationMonitor object that runs periodically in the background at a scheduled frequency."
author: "swatyario"
ms.date: 01/19/2026
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
doc_type: apiPageType
---

# Create configurationMonitor

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [configurationMonitor](../resources/configurationmonitor.md) object that runs periodically in the background at a scheduled frequency.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "configurationmanagement-post-configurationmonitors-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/configurationmanagement-post-configurationmonitors-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/configurationManagement/configurationMonitors
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [configurationMonitor](../resources/configurationmonitor.md) object.

You can specify the following properties when you create a **configurationMonitor**.

|Property|Type|Description|
|:---|:---|:---|
|baseline|[configurationBaseline](../resources/configurationbaseline.md)|A complex object that contains details of at least one resource and one property associated with the resource to be monitored. Required.|
|description|String| User-friendly description of the monitor given by the user. Optional.|
|displayName|String| User-friendly name given by the user to the monitor. Required.|
|parameters|[openComplexDictionaryType](../resources/opencomplexdictionarytype.md)|Key-value pairs that contain the values of parameters which might be used in the baseline. Optional.|

## Response

If successful, this method returns a `201 Created` response code and a [configurationMonitor](../resources/configurationmonitor.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_configurationmonitor_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/configurationManagement/configurationMonitors
Content-Type: application/json

{
  "displayName": "Demo Monitor",
  "description": "This is a Demo Monitor",
  "baseline": {
    "displayName": "Demo Baseline",
    "description": "This is a baseline with resources SharedMailbox, AcceptedDomain and MailContact",
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
          "ExternalEmailAddress": "SMTP:chris@fabrikam.com",
          "Alias": "Chrisa",
          "Ensure": "Present"
        }
      }
    ]
  }
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.configurationMonitor"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/configurationManagement/configurationMonitors/$entity",
  "id": "f1b46220-74af-4347-9ac7-89fe17d57bd7",
  "displayName": "Monitor for EXO100",
  "description": "This is a Monitor with EXO resources",
  "tenantId": "909d5e4a-3d8e-47cf-979a-821619ebaf39",
  "status": "active",
  "monitorRunFrequencyInHours": 6,
  "mode": "monitorOnly",
  "createdDateTime": "2025-03-24T09:00:44.0028541Z",
  "lastModifiedDateTime": "2025-03-24T09:00:44.0398641Z",
  "createdBy": {
    "user": {
      "id": "ad14b3c8-e4db-4896-a963-3f420272d085",
      "displayName": "MOD Administrator"
    },
    "application": {
      "id": null,
      "displayName": null
    }
  },
  "parameters": {}
}
```
