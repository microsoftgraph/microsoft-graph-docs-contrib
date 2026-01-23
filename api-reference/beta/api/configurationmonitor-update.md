---
title: "Update configurationMonitor"
description: "Update the properties of a configurationMonitor object, including the monitor name, description, and baseline."
author: "swatyario"
ms.date: 01/19/2026
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
doc_type: apiPageType
---

# Update configurationMonitor

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [configurationMonitor](../resources/configurationmonitor.md) object, including the monitor name, description, and baseline. You must provide the full monitor body when you call this API.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "configurationmonitor-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/configurationmonitor-update-permissions.md)]

## HTTP request

To update the details of any particular monitor:

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /admin/configurationManagement/configurationMonitors/{configurationMonitorId}
```

>**Note:** Replace `configurationMonitorId` with the monitor ID for which you want to update the details.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|baseline|[configurationBaseline](../resources/configurationbaseline.md)|A complex object that contains details of at least one resource and one property associated with the resource to be monitored. Optional.|
|description|String| User-friendly description of the monitor given by the user. Optional.|
|displayName|String| User-friendly name given by the user to the monitor. Optional.|
|parameters|[openComplexDictionaryType](../resources/opencomplexdictionarytype.md)|Key-value pairs that contain the values of parameters which might be used in the baseline. Optional.|
|status|monitorStatus|Status of the monitor. The possible values are: `active`, `inactive`, `unknownFutureValue`. Optional.|

>**Note**: The [configurationBaseline](../resources/configurationbaseline.md) resource is a contained entity. If an admin wants to update the **configurationBaseline**, they must provide the full monitor body, including values for all fields, particularly those that are relevant and can be updated.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Example 1: Update the displayName of a configurationMonitor

The following example shows how to update the **displayName** property of a **configurationMonitor** object.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_configurationmonitor_1"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/admin/configurationManagement/configurationMonitors/b86049ce-0180-404e-803a-5616d49290d7
Content-Type: application/json

{
  "displayName": "Demo Monitor Name Change"
}
```

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

### Example 2: Update the baseline of a configurationMonitor

The following example shows how to update the **baseline** property of a **configurationMonitor** object.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_configurationmonitor_2"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/admin/configurationManagement/configurationMonitors/b86049ce-0180-404e-803a-5616d49290d7
Content-Type: application/json

{
  "displayName": "Demo Monitor",
  "description": "This is a Demo Monitor",
  "baseline": {
    "displayName": "Demo Baseline",
    "description": "This is a baseline with SharedMailbox, AcceptedDomain and MailContact",
    "parameters": [
      {
        "displayName": "FQDN",
        "description": "The Fully Qualified Domain Name of the Tenant",
        "parameterType": "String"
      }
    ],
    "resources": [
      {
        "displayName": "TestSharedMailbox Resource",
        "resourceType": "microsoft.exchange.sharedmailbox",
        "properties": {
          "DisplayName": "TestSharedMailbox",
          "Identity": "TestSharedMailbox",
          "Ensure": "Present",
          "PrimarySmtpAddress": "[concat('testSharedMailbox', parameters('FQDN'))]",
          "EmailAddresses": [
            "abc@contoso.onmicrosoft.com",
            "[concat('testSharedMailbox@', parameters('FQDN'))]"
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
  },
  "parameters": {
    "FQDN": "contoso.onmicrosoft.com"
  }
}
```

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
