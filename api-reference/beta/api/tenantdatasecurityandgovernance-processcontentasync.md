---
title: "tenantDataSecurityAndGovernance: processContentAsync"
toc.title: "tenantDataSecurityAndGovernance: processContentAsync"
description: "Process a batch of content entries asynchronously against data protection policies."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# tenantDataSecurityAndGovernance: processContentAsync

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Process a batch of content entries asynchronously against data protection policies.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

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

## Response

If successful, this action returns a `200 OK` response code and a collection of [processContentResponses](../resources/processcontentresponses.md) objects in the response body. Each object in the collection corresponds to one of the request items in the batch, identified by the `requestId`, and contains the results (policy actions, errors, scope state) for that specific item. Because this is an asynchronous *intent* API from the perspective of the caller submitting the batch, the `200 OK` indicates the batch was accepted; the results within the response body reflect the outcome of each item's processing by the service.

## Example

### Request

The following example shows a batch request with two items.

```http
POST https://graph.microsoft.com/beta/security/dataSecurityAndGovernance/processContentAsync
Content-type: application/json

{
  "processContentRequests": [
    {
      "requestId": "ClientReq123",
      "userId": "adele.vance@contoso.com",
      "contentToProcess": {
        "contentEntries": [ { "@odata.type": "#microsoft.graph.processConversationMetadata", "identifier": "msg1", "content": { "@odata.type": "#microsoft.graph.textContent", "data": "Project Falcon details..." }, "name": "Chat", "correlationId": "conv1", "createdDateTime": "2024-07-29T16:00:00Z", "modifiedDateTime": "2024-07-29T16:00:00Z" } ],
        "activityMetadata": { "activity": "uploadText", "applicationLocation": "https://thirdparty.com/chat" },
        "deviceMetadata": { "deviceType": "managed", "operatingSystemSpecifications": { "operatingSystemPlatform": "Windows", "operatingSystemVersion": "10.0.19045" } },
        "integratedAppMetadata": { "name": "AppX", "version": "1.0" }
      }
    },
    {
      "requestId": "ClientReq456",
      "userId": "alex.wilber@contoso.com",
      "contentToProcess": {
         "contentEntries": [ { "@odata.type": "#microsoft.graph.processFileMetadata", "identifier": "file://server/share/report.docx", "name": "report.docx", "ownerId":"alex.wilber@contoso.com", "createdDateTime": "2024-07-28T09:00:00Z", "modifiedDateTime": "2024-07-29T16:05:00Z" } ],
         "activityMetadata": { "activity": "uploadFile", "applicationLocation": "https://internal.contoso.com/upload" },
         "deviceMetadata": { "deviceType": "managed", "operatingSystemSpecifications": { "operatingSystemPlatform": "macOS", "operatingSystemVersion": "14.5" } },
         "integratedAppMetadata": { "name": "AppY", "version": "2.1" }
      }
    }
  ]
}
```

### Response

The following example shows the response containing results for both items in the batch.

> **Note:** The response object shown here might be shortened for readability.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.processContentResponses)",
  "value": [
    {
      "requestId": "ClientReq123",
      "results": {
        "protectionScopeState": "notModified",
        "policyActions": [
           { "@odata.type": "#microsoft.graph.blockAccessAction", "action": "blockAccess" }
        ],
        "processingErrors": []
      }
    },
    {
      "requestId": "ClientReq456",
      "results": {
         "protectionScopeState": "modified",
         "policyActions": [], // No blocking actions, but scope changed
         "processingErrors": []
      }
    }
  ]
}
```
