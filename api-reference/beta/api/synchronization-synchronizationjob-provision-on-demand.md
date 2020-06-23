---
title: "synchronizationJob: provisionOnDemand"
description: "Select a user and provision them on-demand."
author: "ArvindHarinder1"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# provisionOnDemand
Namespace: microsoft.graph

Select a user and provision them on-demand.

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
POST /servicePrincipals/{servicePrincipalsId}/synchronization/jobs/{synchronizationJobId}/provisionOnDemand
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|parameters|[synchronizationJobApplicationParameters](../resources/synchronization-synchronizationjobapplicationparameters.md) collection|Represents the objects that will be provisioned and the synchronization rules executed. The resource is primarily used for on-demand provisioning. |



## Response

If successful, this action returns a `202 ACCEPTED` response code and a location header.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "synchronizationjob_provisionondemand"
}
-->
``` http
POST https://graph.microsoft.com/beta/servicePrincipals/{servicePrincipalsId}/synchronization/jobs/{synchronizationJobId}/provisionOnDemand

Content-Type: application/json
Content-length: 122

{
    "parameters" [{
      "subjects": [{
          "objectId": "9bb0f679-a883-4a6f-8260-35b491b8b8c8",
          "objectType": "User"
      }],
      "ruleId": "ea807875-5618-4f0a-9125-0b46a05298ca"
    }]
  }
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.stringkeystringvaluepair"
}
-->
``` http
HTTP/1.1 202 Accepted
Location: "https://graph.microsoft.com/beta/servicePrincipals/8783a342-f7a2-46fb-8243-3658cee556ce/jobs/apply.BoxOutDelta.6a2de5866d0e4e39a06f39c6893e0873.397e75f3-f252-4c80-9027-a812665090d68"
```
