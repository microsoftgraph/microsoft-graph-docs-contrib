---
title: "Create contentApproval"
description: "Create a new contentApproval object."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: apiPageType
---

# Create contentApproval
Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [contentApproval](../resources/windowsupdates-contentapproval.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|WindowsUpdates.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|WindowsUpdates.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/windows/updates/updatePolicies/{updatePolicyId}/complianceChanges
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [contentApproval](../resources/windowsupdates-contentapproval.md) object.

You can specify the following properties when you create a **contentApproval**.

|Property|Type|Description|
|:---|:---|:---|
|content|[microsoft.graph.windowsUpdates.deployableContent](../resources/windowsupdates-deployablecontent.md)|Specifies what content to deploy. Deployable content should be provided as one of the following derived types: [microsoft.graph.windowsUpdates.catalogContent](../resources/windowsupdates-catalogcontent.md).|
|deploymentSettings|[microsoft.graph.windowsUpdates.deploymentSettings](../resources/windowsupdates-deploymentsettings.md)|Settings for governing how to deploy **content**.|

## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.windowsUpdates.contentApproval](../resources/windowsupdates-contentapproval.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_contentapproval_from_",
  "@odata.type": "microsoft.graph.windowsUpdates.contentApproval"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/windows/updates/updatePolicies/a7aa99c1-34a2-850c-5223-7816fde70713/complianceChanges
Content-Type: application/json
Content-length: 570

{
  "@odata.type": "#microsoft.graph.windowsUpdates.contentApproval",
  "content": {
    "@odata.type": "#microsoft.graph.windowsUpdates.catalogContent",
    "catalogEntry": { "@odata.id": "catalog/entries/1" }
  },
  "deploymentSettings": {
    "contentApplicability": {
      "offerWhileRecommendedBy": ["Microsoft"]
    },
    "schedule": {
      "startDateTime": "2020-06-09T10:00:00Z",
      "gradualRollout": {
        "@odata.type": "#microsoft.graph.windowsUpdates.dateDrivenRolloutSettings",
        "endDateTime": "2020-06-16T10:00:00Z"
      }
    }
  }
}
```

### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.windowsUpdates.contentApproval"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.contentApproval",
  "id": "bba2a340-1e32-b5ed-186e-678e16033319",
  "@odata.context": "https://graph.microsoft.com/beta/admin/windows/updates/$metadata#complianceChange/$entity",
  "@odata.type": "#microsoft.graph.windowsUpdates.contentApproval",
  "id": "bba2a340-1e32-b5ed-186e-678e16033319",
  "createdDateTime": "2020-06-09T10:00:00Z",
  "isRevoked": false,
  "revokedDateTime": null,
  "updatePolicy": { "@odata.id": "updatePolicies/a7aa99c1-34a2-850c-5223-7816fde70713" },
  "content": {
    "@odata.type": "#microsoft.graph.windowsUpdates.catalogContent",
    "catalogEntry": { "@odata.id": "catalog/entries/1" }
  },
  "deploymentSettings": {
    "contentApplicability": {
      "offerWhileRecommendedBy": ["Microsoft"]
     },
    "schedule": {
      "startDateTime": "2020-06-09T10:00:00Z",
      "gradualRollout": {
        "@odata.type": "#microsoft.graph.windowsUpdates.dateDrivenRolloutSettings",
        "endDateTime": "2020-06-16T10:00:00Z"
      }
    }
  },
  "deployments": [
      { "@odata.id": "deployments/1" }
  ]
}
```
