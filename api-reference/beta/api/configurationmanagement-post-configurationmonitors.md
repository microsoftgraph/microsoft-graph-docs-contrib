---
title: "Create configurationMonitor"
description: "Create a new configurationMonitor object."
author: "swatyario"
ms.date: 04/10/2025
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
doc_type: apiPageType
---

# Create configurationMonitor

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

It creates a new configurationMonitor object that runs periodically, in the background, at a scheduled frequency.

This API is available only in the public cloud.

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

You can specify the following properties when creating a configurationMonitor.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String| User friendly name given by the user to the monitor. Required.|
|description|String| User friendly description of the monitor given by the user. Optional.|
|tenantId|String| Globally unique identifier / GUID of the tenant for which the monitor is being run. Fetched automatically by the system. |
|status|monitorStatus| Status of the monitor. It can only be active as of now. [Default]|
|monitorRunFrequencyInHours|Int32| Frequency at which the monitor is running [The default frequency, in preview, is 6 hours. In future, the users get a few more options to choose the frequency at which they want the monitors to run.] [Default]. Regardless of when you create or update a monitor, note that the monitor automatically gets triggered within next 6 hours. Currently, the monitors are picked at a fixed time of 0600 hours, 1200 hours, 1800 hours and 2400 hours [All hours in GMT]. For example: If you create a monitor at 0900 hours, the monitor gets triggered around 1200 hours. If you update a monitor at 1600 hours, the monitor gets triggered around 1800 hours.|
|mode|monitorMode| Monitor mode in which the monitor is running. It can be monitorOnly as of now. [Default]
|createdBy|[identitySet](../resources/identityset.md)| Identifier string of the user who created the monitor. Fetched by the system|
|runningOnBehalfOf|[identitySet](../resources/identityset.md)|The user who has modified the monitor the latest, and hence on whose behalf the monitor is running.|
|createdDateTime|DateTimeOffset| The date and time when the monitor were created. |
|lastModifiedDateTime|DateTimeOffset| The date and time when the monitor was last modified. If there are no modifications made to the monitor, it is same as createdDateTime. |
|parameters|[openComplexDictionaryType](../resources/opencomplexdictionarytype.md)|Key-Value pairs containing the value of the parameters which might be used in the baseline. Optional.|
|baseline|[configurationBaseline](../resources/configurationBaseline.md)|A complex object containing the details of at least one resource and at least one property associated to the resource that is to be monitored. Required.|

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
  "@odata.type": "#microsoft.graph.configurationMonitor",
  "displayName": "String",
  "description": "String",
  "parameters": {
    "@odata.type": "microsoft.graph.openComplexDictionaryType"
  },
  "resources": {
    "@odata.type": "microsoft.graph.openComplexDictionaryType"
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
  "@odata.type": "#microsoft.graph.configurationMonitor",
  "id": "fe082480-bdc2-a90c-25f8-4c7fb2fe2f81",
  "displayName": "String",
  "description": "String",
  "tenantId": "String",
  "status": "String",
  "monitorRunFrequencyInHours": "Integer",
  "mode": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "runningOnBehalfOf": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "parameters": {
    "@odata.type": "microsoft.graph.openComplexDictionaryType"
  }
  "resources": {
    "@odata.type": "microsoft.graph.openComplexDictionaryType"
  }
}
```

**Example 1**: Create a configurationMonitor with the default settings

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
                    "ExternalEmailAddress": "SMTP:chris@ach.com",
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
