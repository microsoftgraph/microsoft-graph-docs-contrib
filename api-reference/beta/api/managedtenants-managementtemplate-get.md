---
title: "Get managementTemplate"
description: "Read the properties and relationships of a managementTemplate object."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: apiPageType
---

# Get managementTemplate
Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [managementTemplate](../resources/managedtenants-managementtemplate.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|ManagedTenants.Read.All, ManagedTenants.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/managedTenants/managementTemplates/{managementTemplateId}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [managementTemplate](../resources/managedtenants-managementtemplate.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_managementtemplate"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/managedTenants/managementTemplates/{managementTemplateId}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.managedTenants.managementTemplate"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#tenantRelationships/managedTenants/managementTemplates/$entity",
    "id": "31d57d29-2d54-4074-84bd-51c008c2e6b2_1",
    "displayName": "Baseline - Setup Compliance Policy for Windows 10 devices",
    "description": null,
    "category": "devices",
    "parameters": [
        {
            "valueType": "string",
            "displayName": "DisplayName",
            "description": null,
            "jsonDefaultValue": "\"Baseline - Setup Compliance Policy for Windows 10 devices\"",
            "jsonAllowedValues": "null"
        },
        {
            "valueType": "string",
            "displayName": "OsMinimumVersion",
            "description": null,
            "jsonDefaultValue": "\"10.0.18363\"",
            "jsonAllowedValues": "[]"
        },
        {
            "valueType": "boolean",
            "displayName": "ActiveFirewallRequired",
            "description": null,
            "jsonDefaultValue": "true",
            "jsonAllowedValues": "[false,true]"
        },
        {
            "valueType": "boolean",
            "displayName": "AntivirusRequired",
            "description": null,
            "jsonDefaultValue": "true",
            "jsonAllowedValues": "[false,true]"
        },
        {
            "valueType": "boolean",
            "displayName": "AntiSpywareRequired",
            "description": null,
            "jsonDefaultValue": "true",
            "jsonAllowedValues": "[false,true]"
        },
        {
            "valueType": "boolean",
            "displayName": "DefenderEnabled",
            "description": null,
            "jsonDefaultValue": "true",
            "jsonAllowedValues": "[false,true]"
        },
        {
            "valueType": "boolean",
            "displayName": "StorageRequireEncryption",
            "description": null,
            "jsonDefaultValue": "true",
            "jsonAllowedValues": "[false,true]"
        },
        {
            "valueType": "boolean",
            "displayName": "RtpEnabled",
            "description": null,
            "jsonDefaultValue": "true",
            "jsonAllowedValues": "[false,true]"
        },
        {
            "valueType": "integer",
            "displayName": "ScheduledActionsForRule.BlockActionGracePeriod",
            "description": null,
            "jsonDefaultValue": "72",
            "jsonAllowedValues": "[]"
        }
    ],
    "workloadActions": [
        {
            "actionId": "00a9a585-f51c-4b68-b4f5-f0c3165df8ac",
            "category": "automated",
            "displayName": "#microsoft.graph.windows10CompliancePolicy",
            "description": null,
            "service": "Intune",
            "settings": [
                {
                    "valueType": "string",
                    "displayName": "DisplayName",
                    "overwriteAllowed": false,
                    "jsonValue": "\"Baseline - Setup Compliance Policy for Windows 10 devices\""
                },
                {
                    "valueType": "string",
                    "displayName": "OsMinimumVersion",
                    "overwriteAllowed": false,
                    "jsonValue": "\"10.0.18363\""
                },
                {
                    "valueType": "boolean",
                    "displayName": "ActiveFirewallRequired",
                    "overwriteAllowed": false,
                    "jsonValue": "true"
                },
                {
                    "valueType": "boolean",
                    "displayName": "AntivirusRequired",
                    "overwriteAllowed": false,
                    "jsonValue": "true"
                },
                {
                    "valueType": "boolean",
                    "displayName": "AntiSpywareRequired",
                    "overwriteAllowed": false,
                    "jsonValue": "true"
                },
                {
                    "valueType": "boolean",
                    "displayName": "DefenderEnabled",
                    "overwriteAllowed": false,
                    "jsonValue": "true"
                },
                {
                    "valueType": "boolean",
                    "displayName": "StorageRequireEncryption",
                    "overwriteAllowed": false,
                    "jsonValue": "true"
                },
                {
                    "valueType": "boolean",
                    "displayName": "RtpEnabled",
                    "overwriteAllowed": false,
                    "jsonValue": "true"
                },
                {
                    "valueType": "integer",
                    "displayName": "ScheduledActionsForRule.BlockActionGracePeriod",
                    "overwriteAllowed": false,
                    "jsonValue": "72"
                }
            ]
        }
    ]
}
```
