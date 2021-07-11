---
title: "List managementTemplates"
description: "Get a list of the managementTemplate objects and their properties."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: apiPageType
---

# List managementTemplates
Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [managementTemplate](../resources/managedtenants-managementtemplate.md) objects and their properties.

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
GET /tenantRelationships/managedTenants/managementTemplates
```

## Optional query parameters
This method supports the [OData query parameters](/graph/query-parameters) to help customize the response, including `$apply`, `$count`, `$filter`, `$orderBy`, `$select`, `$skip`, and `$top`.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [managementTemplate](../resources/managedtenants-managementtemplate.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_managementtemplate"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/managedTenants/managementTemplates
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.managedTenants.managementTemplate)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#tenantRelationships/managedTenants/managementTemplates",
    "value": [
        {
            "id": "12524106-036f-457f-b7a6-b003509d29c8_1",
            "displayName": "Baseline - Require MFA for Admins",
            "description": null,
            "category": "identity",
            "parameters": [
                {
                    "valueType": "string",
                    "displayName": "DisplayName",
                    "description": null,
                    "jsonDefaultValue": "\"Baseline - Require MFA for Admins\"",
                    "jsonAllowedValues": "null"
                },
                {
                    "valueType": "string",
                    "displayName": "State",
                    "description": null,
                    "jsonDefaultValue": "\"enabledForReportingButNotEnforced\"",
                    "jsonAllowedValues": "[\"enabled\",\"disabled\",\"enabledForReportingButNotEnforced\"]"
                },
                {
                    "valueType": "stringCollection",
                    "displayName": "ClientAppTypes",
                    "description": null,
                    "jsonDefaultValue": "[\"All\"]",
                    "jsonAllowedValues": "[\"All\"]"
                },
                {
                    "valueType": "stringCollection",
                    "displayName": "IncludeApplications",
                    "description": null,
                    "jsonDefaultValue": "[\"All\"]",
                    "jsonAllowedValues": "[\"All\"]"
                },
                {
                    "valueType": "stringCollection",
                    "displayName": "IncludeRoles",
                    "description": null,
                    "jsonDefaultValue": "[\"62e90394-69f5-4237-9190-012177145e10\",\"f28a1f50-f6e7-4571-818b-6a12f2af6b6c\",\"29232cdf-9323-42fd-ade2-1d097af3e4de\",\"b1be1c3e-b65d-4f19-8427-f6fa0d97feb9\",\"194ae4cb-b126-40b2-bd5b-6091b380977d\",\"729827e3-9c14-49f7-bb1b-9608f156bbb8\",\"b0f54661-2d74-4c50-afa3-1ec803f12efe\",\"fe930be7-5e62-47db-91af-98c3a49a38b1\",\"c4e39bd9-1100-46d3-8c65-fb160da0071f\"]",
                    "jsonAllowedValues": "null"
                },
                {
                    "valueType": "stringCollection",
                    "displayName": "IncludeLocations",
                    "description": null,
                    "jsonDefaultValue": "[\"All\"]",
                    "jsonAllowedValues": "[\"All\",\"AllTrusted\"]"
                },
                {
                    "valueType": "string",
                    "displayName": "GrantControls.Operator",
                    "description": null,
                    "jsonDefaultValue": "\"OR\"",
                    "jsonAllowedValues": "[\"OR\",\"AND\"]"
                },
                {
                    "valueType": "stringCollection",
                    "displayName": "GrantControls.BuiltInControls",
                    "description": null,
                    "jsonDefaultValue": "[\"mfa\"]",
                    "jsonAllowedValues": "[\"mfa\"]"
                }
            ],
            "workloadActions": [
                {
                    "actionId": "7fff5ebb-10bd-4493-b0bb-2d0cf6172f16",
                    "category": "automated",
                    "displayName": "ConditionalAccessPolicy",
                    "description": null,
                    "service": "AAD",
                    "settings": [
                        {
                            "valueType": "string",
                            "displayName": "DisplayName",
                            "overwriteAllowed": false,
                            "jsonValue": "\"Baseline - Require MFA for Admins\""
                        },
                        {
                            "valueType": "string",
                            "displayName": "State",
                            "overwriteAllowed": false,
                            "jsonValue": "\"enabledForReportingButNotEnforced\""
                        },
                        {
                            "valueType": "stringCollection",
                            "displayName": "ClientAppTypes",
                            "overwriteAllowed": false,
                            "jsonValue": "[\"All\"]"
                        },
                        {
                            "valueType": "stringCollection",
                            "displayName": "IncludeApplications",
                            "overwriteAllowed": false,
                            "jsonValue": "[\"All\"]"
                        },
                        {
                            "valueType": "stringCollection",
                            "displayName": "IncludeRoles",
                            "overwriteAllowed": false,
                            "jsonValue": "[\"62e90394-69f5-4237-9190-012177145e10\",\"f28a1f50-f6e7-4571-818b-6a12f2af6b6c\",\"29232cdf-9323-42fd-ade2-1d097af3e4de\",\"b1be1c3e-b65d-4f19-8427-f6fa0d97feb9\",\"194ae4cb-b126-40b2-bd5b-6091b380977d\",\"729827e3-9c14-49f7-bb1b-9608f156bbb8\",\"b0f54661-2d74-4c50-afa3-1ec803f12efe\",\"fe930be7-5e62-47db-91af-98c3a49a38b1\",\"c4e39bd9-1100-46d3-8c65-fb160da0071f\"]"
                        },
                        {
                            "valueType": "stringCollection",
                            "displayName": "IncludeLocations",
                            "overwriteAllowed": false,
                            "jsonValue": "[\"All\"]"
                        },
                        {
                            "valueType": "string",
                            "displayName": "GrantControls.Operator",
                            "overwriteAllowed": false,
                            "jsonValue": "\"OR\""
                        },
                        {
                            "valueType": "stringCollection",
                            "displayName": "GrantControls.BuiltInControls",
                            "overwriteAllowed": false,
                            "jsonValue": "[\"mfa\"]"
                        }
                    ]
                }
            ]
        },
        {
            "id": "21230aa5-d5a9-4403-b179-baf2de242aca_1",
            "displayName": "Baseline - Require MFA for end users",
            "description": null,
            "category": "identity",
            "parameters": [
                {
                    "valueType": "string",
                    "displayName": "DisplayName",
                    "description": null,
                    "jsonDefaultValue": "\"Baseline - Require MFA for end users\"",
                    "jsonAllowedValues": "null"
                },
                {
                    "valueType": "string",
                    "displayName": "State",
                    "description": null,
                    "jsonDefaultValue": "\"enabledForReportingButNotEnforced\"",
                    "jsonAllowedValues": "[\"enabled\",\"disabled\",\"enabledForReportingButNotEnforced\"]"
                },
                {
                    "valueType": "stringCollection",
                    "displayName": "ClientAppTypes",
                    "description": null,
                    "jsonDefaultValue": "[\"All\"]",
                    "jsonAllowedValues": "[\"All\"]"
                },
                {
                    "valueType": "stringCollection",
                    "displayName": "IncludeApplications",
                    "description": null,
                    "jsonDefaultValue": "[\"All\"]",
                    "jsonAllowedValues": "[\"All\"]"
                },
                {
                    "valueType": "stringCollection",
                    "displayName": "IncludeUsers",
                    "description": null,
                    "jsonDefaultValue": "[\"None\"]",
                    "jsonAllowedValues": "[\"All\",\"None\"]"
                },
                {
                    "valueType": "stringCollection",
                    "displayName": "IncludeLocations",
                    "description": null,
                    "jsonDefaultValue": "[\"All\"]",
                    "jsonAllowedValues": "[\"All\",\"AllTrusted\"]"
                },
                {
                    "valueType": "string",
                    "displayName": "GrantControls.Operator",
                    "description": null,
                    "jsonDefaultValue": "\"OR\"",
                    "jsonAllowedValues": "[\"OR\",\"AND\"]"
                },
                {
                    "valueType": "stringCollection",
                    "displayName": "GrantControls.BuiltInControls",
                    "description": null,
                    "jsonDefaultValue": "[\"mfa\"]",
                    "jsonAllowedValues": "[\"mfa\"]"
                }
            ],
            "workloadActions": [
                {
                    "actionId": "fcb7ace7-3ea6-4474-912a-00ee78554445",
                    "category": "automated",
                    "displayName": "ConditionalAccessPolicy",
                    "description": null,
                    "service": "AAD",
                    "settings": [
                        {
                            "valueType": "string",
                            "displayName": "DisplayName",
                            "overwriteAllowed": false,
                            "jsonValue": "\"Baseline - Require MFA for end users\""
                        },
                        {
                            "valueType": "string",
                            "displayName": "State",
                            "overwriteAllowed": false,
                            "jsonValue": "\"enabledForReportingButNotEnforced\""
                        },
                        {
                            "valueType": "stringCollection",
                            "displayName": "ClientAppTypes",
                            "overwriteAllowed": false,
                            "jsonValue": "[\"All\"]"
                        },
                        {
                            "valueType": "stringCollection",
                            "displayName": "IncludeApplications",
                            "overwriteAllowed": false,
                            "jsonValue": "[\"All\"]"
                        },
                        {
                            "valueType": "stringCollection",
                            "displayName": "IncludeUsers",
                            "overwriteAllowed": false,
                            "jsonValue": "[\"None\"]"
                        },
                        {
                            "valueType": "stringCollection",
                            "displayName": "IncludeLocations",
                            "overwriteAllowed": false,
                            "jsonValue": "[\"All\"]"
                        },
                        {
                            "valueType": "string",
                            "displayName": "GrantControls.Operator",
                            "overwriteAllowed": false,
                            "jsonValue": "\"OR\""
                        },
                        {
                            "valueType": "stringCollection",
                            "displayName": "GrantControls.BuiltInControls",
                            "overwriteAllowed": false,
                            "jsonValue": "[\"mfa\"]"
                        }
                    ]
                }
            ]
        },
        {
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
        },
        {
            "id": "b2d6d189-ea31-4cf8-b75e-41210c583127_1",
            "displayName": "Baseline - Setup Microsoft Defender Antivirus Policy for Windows 10 devices",
            "description": null,
            "category": "devices",
            "parameters": [
                {
                    "valueType": "string",
                    "displayName": "Name",
                    "description": null,
                    "jsonDefaultValue": "\"Baseline - Setup Microsoft Defender Antivirus Policy for Windows 10 devices\"",
                    "jsonAllowedValues": "null"
                },
                {
                    "valueType": "boolean",
                    "displayName": "AllowCloudProtection",
                    "description": null,
                    "jsonDefaultValue": "true",
                    "jsonAllowedValues": "[false,true]"
                },
                {
                    "valueType": "integer",
                    "displayName": "CloudBlockLevel",
                    "description": null,
                    "jsonDefaultValue": "2",
                    "jsonAllowedValues": "[2,4,6]"
                },
                {
                    "valueType": "integer",
                    "displayName": "CloudExtendedTimeout",
                    "description": null,
                    "jsonDefaultValue": "50",
                    "jsonAllowedValues": "[]"
                },
                {
                    "valueType": "boolean",
                    "displayName": "AllowRealtimeMonitoring",
                    "description": null,
                    "jsonDefaultValue": "true",
                    "jsonAllowedValues": "[false,true]"
                },
                {
                    "valueType": "boolean",
                    "displayName": "AllowBehaviorMonitoring",
                    "description": null,
                    "jsonDefaultValue": "true",
                    "jsonAllowedValues": "[false,true]"
                },
                {
                    "valueType": "integer",
                    "displayName": "EnableNetworkProtection",
                    "description": null,
                    "jsonDefaultValue": "1",
                    "jsonAllowedValues": "[0,1,2]"
                },
                {
                    "valueType": "integer",
                    "displayName": "SubmitSamplesConsent",
                    "description": null,
                    "jsonDefaultValue": "1",
                    "jsonAllowedValues": "[0,1,2,3]"
                },
                {
                    "valueType": "integer",
                    "displayName": "PUAProtection",
                    "description": null,
                    "jsonDefaultValue": "1",
                    "jsonAllowedValues": "[0,1,2]"
                },
                {
                    "valueType": "boolean",
                    "displayName": "AllowArchiveScanning",
                    "description": null,
                    "jsonDefaultValue": "true",
                    "jsonAllowedValues": "[false,true]"
                },
                {
                    "valueType": "integer",
                    "displayName": "AvgCPULoadFactor",
                    "description": null,
                    "jsonDefaultValue": "50",
                    "jsonAllowedValues": "[]"
                },
                {
                    "valueType": "boolean",
                    "displayName": "AllowFullScanRemovableDriveScanning",
                    "description": null,
                    "jsonDefaultValue": "true",
                    "jsonAllowedValues": "[false,true]"
                },
                {
                    "valueType": "integer",
                    "displayName": "ScanParameter",
                    "description": null,
                    "jsonDefaultValue": "1",
                    "jsonAllowedValues": "[1,2]"
                },
                {
                    "valueType": "integer",
                    "displayName": "ScheduleScanDay",
                    "description": null,
                    "jsonDefaultValue": "2",
                    "jsonAllowedValues": "[0,1,2,3,4,5,6,7,8]"
                },
                {
                    "valueType": "integer",
                    "displayName": "ScheduleScanTime",
                    "description": null,
                    "jsonDefaultValue": "720",
                    "jsonAllowedValues": "[]"
                },
                {
                    "valueType": "integer",
                    "displayName": "SignatureUpdateInterval",
                    "description": null,
                    "jsonDefaultValue": "4",
                    "jsonAllowedValues": "[]"
                }
            ],
            "workloadActions": [
                {
                    "actionId": "4a1c5d34-c2f7-4fd5-a7b5-4bedd95bb8f9",
                    "category": "automated",
                    "displayName": "Windows10DefenderPolicy",
                    "description": null,
                    "service": "Intune",
                    "settings": [
                        {
                            "valueType": "string",
                            "displayName": "Name",
                            "overwriteAllowed": false,
                            "jsonValue": "\"Baseline - Setup Microsoft Defender Antivirus Policy for Windows 10 devices\""
                        },
                        {
                            "valueType": "boolean",
                            "displayName": "AllowCloudProtection",
                            "overwriteAllowed": false,
                            "jsonValue": "true"
                        },
                        {
                            "valueType": "integer",
                            "displayName": "CloudBlockLevel",
                            "overwriteAllowed": false,
                            "jsonValue": "2"
                        },
                        {
                            "valueType": "integer",
                            "displayName": "CloudExtendedTimeout",
                            "overwriteAllowed": false,
                            "jsonValue": "50"
                        },
                        {
                            "valueType": "boolean",
                            "displayName": "AllowRealtimeMonitoring",
                            "overwriteAllowed": false,
                            "jsonValue": "true"
                        },
                        {
                            "valueType": "boolean",
                            "displayName": "AllowBehaviorMonitoring",
                            "overwriteAllowed": false,
                            "jsonValue": "true"
                        },
                        {
                            "valueType": "integer",
                            "displayName": "EnableNetworkProtection",
                            "overwriteAllowed": false,
                            "jsonValue": "1"
                        },
                        {
                            "valueType": "integer",
                            "displayName": "SubmitSamplesConsent",
                            "overwriteAllowed": false,
                            "jsonValue": "1"
                        },
                        {
                            "valueType": "integer",
                            "displayName": "PUAProtection",
                            "overwriteAllowed": false,
                            "jsonValue": "1"
                        },
                        {
                            "valueType": "boolean",
                            "displayName": "AllowArchiveScanning",
                            "overwriteAllowed": false,
                            "jsonValue": "true"
                        },
                        {
                            "valueType": "integer",
                            "displayName": "AvgCPULoadFactor",
                            "overwriteAllowed": false,
                            "jsonValue": "50"
                        },
                        {
                            "valueType": "boolean",
                            "displayName": "AllowFullScanRemovableDriveScanning",
                            "overwriteAllowed": false,
                            "jsonValue": "true"
                        },
                        {
                            "valueType": "integer",
                            "displayName": "ScanParameter",
                            "overwriteAllowed": false,
                            "jsonValue": "1"
                        },
                        {
                            "valueType": "integer",
                            "displayName": "ScheduleScanDay",
                            "overwriteAllowed": false,
                            "jsonValue": "2"
                        },
                        {
                            "valueType": "integer",
                            "displayName": "ScheduleScanTime",
                            "overwriteAllowed": false,
                            "jsonValue": "720"
                        },
                        {
                            "valueType": "integer",
                            "displayName": "SignatureUpdateInterval",
                            "overwriteAllowed": false,
                            "jsonValue": "4"
                        }
                    ]
                }
            ]
        },
        {
            "id": "e2cadc41-a08f-45e7-8eb1-942d224dfb9a_1",
            "displayName": "Baseline - Enroll devices in MEM",
            "description": null,
            "category": "devices",
            "parameters": [
                {
                    "valueType": "integer",
                    "displayName": "UserDeviceQuota",
                    "description": null,
                    "jsonDefaultValue": "50",
                    "jsonAllowedValues": "[5,10,20,50,100,2147483647]"
                },
                {
                    "valueType": "boolean",
                    "displayName": "MultiFactorAuthConfiguration",
                    "description": null,
                    "jsonDefaultValue": "false",
                    "jsonAllowedValues": "[true,false]"
                }
            ],
            "workloadActions": [
                {
                    "actionId": "46b80b42-06c7-45b4-b6fb-aa0aecace87b",
                    "category": "automated",
                    "displayName": "AzureADJoinConfiguration",
                    "description": null,
                    "service": "AAD",
                    "settings": [
                        {
                            "valueType": "integer",
                            "displayName": "UserDeviceQuota",
                            "overwriteAllowed": false,
                            "jsonValue": "50"
                        },
                        {
                            "valueType": "boolean",
                            "displayName": "MultiFactorAuthConfiguration",
                            "overwriteAllowed": false,
                            "jsonValue": "false"
                        }
                    ]
                }
            ]
        },
        {
            "id": "e5834405-43d2-4815-867d-3dd600308d1c_1",
            "displayName": "Baseline - Block Legacy Authentication",
            "description": null,
            "category": "identity",
            "parameters": [
                {
                    "valueType": "string",
                    "displayName": "DisplayName",
                    "description": null,
                    "jsonDefaultValue": "\"Baseline - Block Legacy Authentication\"",
                    "jsonAllowedValues": "null"
                },
                {
                    "valueType": "string",
                    "displayName": "State",
                    "description": null,
                    "jsonDefaultValue": "\"enabledForReportingButNotEnforced\"",
                    "jsonAllowedValues": "[\"enabled\",\"disabled\",\"enabledForReportingButNotEnforced\"]"
                },
                {
                    "valueType": "stringCollection",
                    "displayName": "ClientAppTypes",
                    "description": null,
                    "jsonDefaultValue": "[\"exchangeActiveSync\",\"other\"]",
                    "jsonAllowedValues": "[\"exchangeActiveSync\",\"other\"]"
                },
                {
                    "valueType": "stringCollection",
                    "displayName": "IncludeApplications",
                    "description": null,
                    "jsonDefaultValue": "[\"All\"]",
                    "jsonAllowedValues": "[\"All\"]"
                },
                {
                    "valueType": "stringCollection",
                    "displayName": "IncludeUsers",
                    "description": null,
                    "jsonDefaultValue": "[\"None\"]",
                    "jsonAllowedValues": "[\"All\",\"None\"]"
                },
                {
                    "valueType": "stringCollection",
                    "displayName": "IncludeLocations",
                    "description": null,
                    "jsonDefaultValue": "[\"All\"]",
                    "jsonAllowedValues": "[\"All\",\"AllTrusted\"]"
                },
                {
                    "valueType": "string",
                    "displayName": "GrantControls.Operator",
                    "description": null,
                    "jsonDefaultValue": "\"OR\"",
                    "jsonAllowedValues": "[\"OR\",\"AND\"]"
                },
                {
                    "valueType": "stringCollection",
                    "displayName": "GrantControls.BuiltInControls",
                    "description": null,
                    "jsonDefaultValue": "[\"block\"]",
                    "jsonAllowedValues": "[\"block\"]"
                }
            ],
            "workloadActions": [
                {
                    "actionId": "6a3ad0bc-5d7e-4a49-a105-c559aa4633e1",
                    "category": "automated",
                    "displayName": "ConditionalAccessPolicy",
                    "description": null,
                    "service": "AAD",
                    "settings": [
                        {
                            "valueType": "string",
                            "displayName": "DisplayName",
                            "overwriteAllowed": false,
                            "jsonValue": "\"Baseline - Block Legacy Authentication\""
                        },
                        {
                            "valueType": "string",
                            "displayName": "State",
                            "overwriteAllowed": false,
                            "jsonValue": "\"enabledForReportingButNotEnforced\""
                        },
                        {
                            "valueType": "stringCollection",
                            "displayName": "ClientAppTypes",
                            "overwriteAllowed": false,
                            "jsonValue": "[\"exchangeActiveSync\",\"other\"]"
                        },
                        {
                            "valueType": "stringCollection",
                            "displayName": "IncludeApplications",
                            "overwriteAllowed": false,
                            "jsonValue": "[\"All\"]"
                        },
                        {
                            "valueType": "stringCollection",
                            "displayName": "IncludeUsers",
                            "overwriteAllowed": false,
                            "jsonValue": "[\"None\"]"
                        },
                        {
                            "valueType": "stringCollection",
                            "displayName": "IncludeLocations",
                            "overwriteAllowed": false,
                            "jsonValue": "[\"All\"]"
                        },
                        {
                            "valueType": "string",
                            "displayName": "GrantControls.Operator",
                            "overwriteAllowed": false,
                            "jsonValue": "\"OR\""
                        },
                        {
                            "valueType": "stringCollection",
                            "displayName": "GrantControls.BuiltInControls",
                            "overwriteAllowed": false,
                            "jsonValue": "[\"block\"]"
                        }
                    ]
                }
            ]
        }
    ]
}
```
