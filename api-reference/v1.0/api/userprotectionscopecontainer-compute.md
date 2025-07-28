---
title: "userProtectionScopeContainer: compute"
toc.title: "userProtectionScopeContainer: compute"
description: "Compute the data protection policies and actions applicable to a specific user based on their context."
author: "kylemar"
ms.date: 06/19/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# userProtectionScopeContainer: compute

Namespace: microsoft.graph

Compute the data protection policies and actions applicable to a specific user based on their context.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "userprotectionscopecontainer_compute" } -->
[!INCLUDE [permissions-table](../includes/permissions/userprotectionscopecontainer-compute-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /me/dataSecurityAndGovernance/protectionScopes/compute
```

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]

<!-- { "blockType": "ignored" } -->
```http
POST /users/{usersId}/dataSecurityAndGovernance/protectionScopes/compute
```

## Request headers

| Name          | Description   |
| :------------ | :------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter             | Type                                                                                                                 | Description                                                                                                                                                         |
| :-------------------- | :------------------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| activities            | microsoft.graph.security.userActivityTypes                                                   | Optional. Flags specifying the user activities the calling application supports or is interested. Possible values are `none`, `uploadText`, `uploadFile`, `downloadText`, `downloadFile, 'unknownFutureValue`. This object is a multi-valued enumeration.|
| deviceMetadata        | [deviceMetadata](../resources/devicemetadata.md)                                    | Optional. Information about the user's device (type, OS) used for contextual policy evaluation.                                                                    |
| integratedAppMetadata | [integratedApplicationMetadata](../resources/integratedapplicationmetadata.md)      | Optional. Information about the calling application (name, version) integrating with Microsoft Purview.                                                                    |
| locations             | [policyLocation](../resources/policylocation.md) collection                         | Optional. List of specific locations the application is interested in. If provided, results are trimmed to policies covering these locations. Use [policy location application](../resources/policylocationapplication.md) for application locations, [policy location domain](../resources/policylocationdomain.md) for domain locations, or [policy location URL](../resources/policylocationurl.md) for URL locations. You must specify the `@odata.type` property to declare the type of policyLocation. For example, `"@odata.type": "microsoft.graph.policyLocationApplication"`.|
| pivotOn               | microsoft.graph.policyPivotProperty                                                 | Optional. Specifies how the results should be aggregated. If omitted or `none`, results might be less aggregated. Possible values are `activity`,`location`, `none`.                  |

## Response headers

| Name          | Description   |
| :------------ | :------------ |
| ETag          | An indicator whether the admin-configured policy state has changed. If you have cached Etag value and it matches ETag from previous results from this API, there is no need to parse the response and cache the parsed results. Cache this value for calls to [process content](../api/userdatasecurityandgovernance-processcontent.md). |

## Response

If successful, this action returns a `200 OK` response code and a collection of [policyUserScope](../resources/policyuserscope.md) objects in the response body. Each object represents a set of locations and activities governed by a common set of policy actions and execution mode for the specified user.

## Examples

### Example 1: Compute protection scope for an Enterprise AI app

#### Request

The following example computes the protection scope for a user performing text uploads and downloads.

```http
POST https://graph.microsoft.com/v1.0/users/7c1f8f10-cba8-4a8d-9449-db4b876d1ef70/dataSecurityAndGovernance/protectionScopes/compute
Content-type: application/json

{
   "activities": "uploadText,downloadText",
   "locations": [
      {
         "@odata.type": "microsoft.graph.policyLocationApplication",
         "value": "83ef208a-0396-4893-9d4f-d36efbffc8bd"
      }
   ]
}
```

#### Response

The following example shows the response. It indicates that for the `uploadText` activity for the integrated application with id 83ef208a-0396-4893-9d4f-d36efbffc8bd, policies require inline evaluation. For the `uploadFile` activity for the integrated application with id 83ef208a-0396-4893-9d4f-d36efbffc8bd, policies require offline evaluation and trigger a `restrictAccess` action (likely blocking uploads based on contextual information, e.g. blocking uploads for specific users or group).

> **Note:** The response object shown here might be shortened for readability.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.policyUserScope)",
  "value": [
    {
      "activities": "uploadText",
      "executionMode": "evaluateInline",
      "locations": [
        {
          "value": "83ef208a-0396-4893-9d4f-d36efbffc8bd"
        }
      ],
      "policyActions": []
    },
    {
      "activities": "uploadFile",
      "executionMode": "evaluateOffline",
      "locations": [
        {
          "value": "83ef208a-0396-4893-9d4f-d36efbffc8bd"
        }
      ],
      "policyActions": [
        {
            "@odata.type": "#microsoft.graph.restrictAccessAction",
            "action": "restrictAccess",
            "restrictionAction": "block"
        }
     ]
    }
  ]
}
```

### Example 2: Compute protection scope for a network provider app

#### Request

The following example computes the tenant-wide protection scope for text uploads and downloads and file uploads and downloads, interested in a specific application.

```http
POST https://graph.microsoft.com/v1.0/security/dataSecurityAndGovernance/protectionScopes/compute
Content-type: application/json

{
    "activities": "uploadText,downloadText, uploadFile,downloadFile"
}
```

#### Response

The following example shows the response. It indicates that uploadText, downloadText, uploadFile, or downloadFile activities for 'subdomain.domain1.com', 'domain2.com' or 'https://subdomain.domain3.com/content/subcontent' require offline evaluation. UploadText activity for 'subdomain.domain1.com', 'domain2.com' or 'https://subdomain.domain3.com/content/subcontent' require inline evaluation.

```http

> **Note:** The response object shown here might be shortened for readability.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.policyTenantScope)",
  "value": [
    {
      "activities": "uploadText,uploadFile,downloadText,downloadFile",
      "executionMode": "evaluateOffline",
      "locations": [
        {
          "@odata.type": "#microsoft.graph.policyLocationDomain",
          "value": "subdomain.domain1.com"
        },
        {
          "@odata.type": "#microsoft.graph.policyLocationDomain",
          "value": "domain2.com"
        },
        {
          "@odata.type": "#microsoft.graph.policyLocationUrl",
          "value": "https://subdomain.domain3.com/content/subcontent"
        }
      ],
      "policyActions": []
    },
    {
      "activities": "uploadText",
      "executionMode": "evaluateInline",
      "locations": [
        {
          "@odata.type": "#microsoft.graph.policyLocationDomain",
          "value": "subdomain.domain1.com"
        },
        {
          "@odata.type": "#microsoft.graph.policyLocationDomain",
          "value": "domain2.com"
        },
        {
          "@odata.type": "#microsoft.graph.policyLocationUrl",
          "value": "https://subdomain.domain3.com/content/subcontent"
        }
      ],
      "policyActions": []
    }
  ]
}
```
