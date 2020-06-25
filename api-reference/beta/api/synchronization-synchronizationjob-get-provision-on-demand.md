---
title: "synchronizationJob: getProvisionOnDemand"
description: "Poll the outcome of a provisioning request when using on-demand provisioning."
author: "ArvindHarinder1"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# synchronizationJob: provisionOnDemand

Namespace: microsoft.graph

Poll the outcome of a provisioning request when using on-demand provisioning. 

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/concepts/permissions-reference.md).

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)     |Directory.ReadWrite.All  |
|Delegated (personal Microsoft account) |Not supported. |
|Application                            |Not supported. | 

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /servicePrincipals/{servicePrincipalsId}/synchronization/jobs/apply.{synchronizationJobId}
```
## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code and a location header.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "synchronizationjob_provisionondemand"
}
-->
``` http
GET https://graph.microsoft.com/beta/servicePrincipals/8783a342-f7a2-46fb-8243-3658cee556ce/jobs/apply.BoxOutDelta.6a2de5866d0e4e39a06f39c6893e0873.397e75f3-f252-4c80-9027-a812665090d6
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.stringkeystringvaluepair"
}
-->
``` 
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 2577

{
    "id": "apply.BoxOutDelta.6a2de5866d0e4e39a06f39c6893e0873.397e75f3-f252-4c80-9027-a812665090d6",
    "templateId": "BoxOutDelta",
    "status": {
    }
}
```
