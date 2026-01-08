---
title: "tenantProtectionScopeContainer: compute"
toc.title: "tenantProtectionScopeContainer: compute"
description: "Compute the tenant-wide data protection policies and actions, including user or group scoping."
author: "kylemar"
ms.date: 06/19/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# tenantProtectionScopeContainer: compute

Namespace: microsoft.graph

Compute the tenant-wide data protection policies and actions, including user/group scoping.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "tenantprotectionscopecontainer_compute" } -->
[!INCLUDE [permissions-table](../includes/permissions/tenantprotectionscopecontainer-compute-permissions.md)]

## HTTP request

```http
POST /security/dataSecurityAndGovernance/protectionScopes/compute
```

## Request headers

| Name          | Description   |
| :------------ | :------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

## Request body

In the request body, provide JSON object with the following parameters.

| Parameter             | Type                                                                                                                 | Description                                                                                                                                                         |
| :-------------------- | :------------------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| activities            | microsoft.graph.security.userActivityTypes                                                   | Optional. Flags specifying the user activities the calling application supports or is interested. Possible values are `none`, `uploadText`, `uploadFile`, `downloadText`, `downloadFile`, `unknownFutureValue`. This object is a multi-valued enumeration.|
| deviceMetadata        | [deviceMetadata](../resources/devicemetadata.md)                                    | Optional. Information about the device context (type, OS) used for contextual policy evaluation. Not expected to be used when computing tenant protection scopes  |
| integratedAppMetadata | [integratedApplicationMetadata](../resources/integratedapplicationmetadata.md)      | Optional. Information about the calling application (name, version) integrating with Microsoft Purview.                                                                    |
| locations             | [policyLocation](../resources/policylocation.md) collection                         | Optional. List of specific locations the application is interested in. If provided, results are trimmed to policies covering these locations. Use [policy location application](../resources/policylocationapplication.md) for application locations, [policy location domain](../resources/policylocationdomain.md) for domain locations, or [policy location URL](../resources/policylocationurl.md) for URL locations. You must specify the `@odata.type` property to declare the type of policyLocation. For example, `"@odata.type": "microsoft.graph.policyLocationApplication"`.|
| pivotOn               | microsoft.graph.policyPivotProperty                          | Optional. Specifies how the results should be aggregated. If omitted or `none`, results might be less aggregated. Possible values are `activity`,`location`, `none`.|

## Response

If successful, this action returns a `200 OK` response code and a collection of [policyTenantScope](../resources/policytenantscope.md) objects in the response body. Each object represents a set of locations and activities governed by a common set of policy actions and execution mode, along with the user/group bindings for that specific policy configuration.

## Examples

### Request

The following example computes the tenant-wide protection scope for text uploads and downloads, interested in a specific application.

```http
POST https://graph.microsoft.com/v1.0/security/dataSecurityAndGovernance/protectionScopes/compute
Content-type: application/json

{
    "activities": "uploadText,downloadText",
    "locations": [
        {
            "@odata.type": "microsoft.graph.policyLocationApplication",
            "value": "be121c8f-ecd8-4026-b699-669e0ce1bcbf"
        }
    ]
}
```

### Response

The following example shows the response. It indicates that uploadText or downloadText activities "All" users (tenant scope) with no exclusions require inline evaluation.

> **Note:** The response object shown here might be shortened for readability.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.policyTenantScope)",
    "value": [
        {
            "activities": "uploadText,downloadText",
            "executionMode": "evaluateOffline",
            "policyScope": {
                "inclusions": [
                    {
                        "identity": "All"
                    }
                ],
                "exclusions": [
                ]
            },
            "locations": [
                {
                    "value": "be121c8f-ecd8-4026-b699-669e0ce1bcbf"
                }
            ],
            "policyActions": [
            ]
        }
    ]
}
```
