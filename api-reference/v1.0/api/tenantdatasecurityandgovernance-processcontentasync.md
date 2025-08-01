---
title: "tenantDataSecurityAndGovernance: processContentAsync"
toc.title: "tenantDataSecurityAndGovernance: processContentAsync"
description: "Process a batch of tenant-wide content entries asynchronously against data protection policies."
author: "kylemar"
ms.date: 06/19/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# tenantDataSecurityAndGovernance: processContentAsync

Namespace: microsoft.graph

Process a batch of tenant-wide content entries asynchronously against data protection policies.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "tenantdatasecurityandgovernance_processcontentasync" } -->
[!INCLUDE [permissions-table](../includes/permissions/tenantdatasecurityandgovernance-processcontentasync-permissions.md)]

## HTTP request

```http
POST /security/dataSecurityAndGovernance/processContentAsync
```

## Request headers

| Name          | Description   |
| :------------ | :------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter             | Type                                                                                                       | Description                                                                                                            |
| :-------------------- | :---------------------------------------------- | :------------------------------------------------------ |
| processContentRequests| [processContentBatchRequest](../resources/processcontentbatchrequest.md) collection | Required. A collection of individual content processing requests, each with its own user context, content, and request ID. |

The size of the text in each content entry is limited to 2 MB. The maximum number of content entries per request is 64. These could be spread across up to 64 **processContentRequests**, each containing one content entry or 2 **processContentRequests**, each containing 32 content entries or some other combination that does not exceed 64 content entries.

## Response

In most cases, when successful, this method returns a 204, No Content. This method can also return a `200 OK` response code and a collection of [processContentResponses](../resources/processcontentresponses.md) objects in the response body. Each object in the collection corresponds to one of the request items in the batch, identified by the `requestId`, and contains the results (policy actions, errors, scope state) for that specific item. Given that this is an asynchronous *intent* API from the perspective of the caller submitting the batch, the `200 OK` indicates the batch was accepted; the results within the response body reflect the outcome of each item's processing by the service.

## Example

### Request

The following example shows a batch request with two items.

```http
POST https://graph.microsoft.com/v1.0/security/dataSecurityAndGovernance/processContentAsync
Content-type: application/json

{
   "processContentRequests": [
   {
      "requestId": "bca22a4e-245f-4b6f-a242-9bdbc238e413",
      "userId": "47b5e19a-e210-4ed5-a643-dbf5b47e1821",
      "contentToProcess": {
         "contentEntries": [
            {
               "@odata.type": "#microsoft.graph.processConversationMetadata",
               "identifier": "47138e53-c855-47f0-9271-d473681ac310",
               "content": {
                  "@odata.type": "#microsoft.graph.textContent",
                  "data": "1309475745, Is D3m0P@sswd! a secure password?"
               },
               "name": "Chat message",
               "correlationId": "e76bcc34-07ea-43f4-ae64-d383df423b90",
               "sequenceNumber": 0,
               "createdDateTime": "2025-04-21T16:00:00Z",
               "modifiedDateTime": "2025-04-21T16:00:00Z"
            }
         ],
         "activityMetadata": {
            "activity": "uploadText",
         },
         "deviceMetadata": {
            "operatingSystemSpecifications": {
               "operatingSystemPlatform": "Windows",
               "operatingSystemVersion": "10.0.19045"
            },
            "ipAddress": "127.0.0.1"
         },
         "protectedAppMetadata": {
            "name": "PC Purview Workload",
            "version": "0.2",
            "applicationLocation":{
               "@odata.type": "microsoft.graph.policyLocationApplication",
               "value": "be121c8f-ecd8-4026-b699-669e0ce1bcbf"
            }
         },
         "integratedAppMetadata": {
            "name": "PCA Workload Sample - IA",
            "version": "1.0"
         }
      }
   },
   {
      "requestId": "f1df4929-4116-4ee6-b008-0a6a42037aed",
      "userId": "47b5e19a-e210-4ed5-a643-dbf5b47e1821",
      "contentToProcess": {
         "contentEntries": [
            {
               "@odata.type": "#microsoft.graph.processConversationMetadata",
               "identifier": "02be9bc1-335c-4184-ae4c-247449e5e85d",
               "content": {
                  "@odata.type": "#microsoft.graph.textContent",
                  "data": "1309475746, The password D3m0P@sswd! has a mix of uppercase and lowercase letters, numbers, and special characters, which are good practices for creating a strong password. However, its length and the use of common patterns like 'Demo' and 'Password' can make it less secure than it appears."
               },
               "name": "Chat message",
               "correlationId": "e76bcc34-07ea-43f4-ae64-d383df423b90",
               "sequenceNumber": 1,
               "createdDateTime": "2025-04-21T16:00:00Z",
               "modifiedDateTime": "2025-04-21T16:00:00Z"
            }
         ],
         "activityMetadata": {
            "activity": "downloadText",
         },
         "deviceMetadata": {
            "operatingSystemSpecifications": {
               "operatingSystemPlatform": "Windows",
               "operatingSystemVersion": "10.0.19045"
             },
            "ipAddress": "127.0.0.1"
         },
         "protectedAppMetadata": {
            "name": "PC Purview Workload",
            "version": "0.2",
            "applicationLocation":{
               "@odata.type": "microsoft.graph.policyLocationApplication",
               "value": "be19dc8f-ecd8-4026-b699-669e0ce1bcbf"
            }
         },
         "integratedAppMetadata": {
            "name": "PCA Workload Sample - IA",
            "version": "1.0"
         }
      }
     }
   ]
}
```

### Response

The following example shows the 204 No Content response.

```http
HTTP/1.1 204 No Content
```
